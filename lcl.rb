class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/1.2.5.tar.gz"
  sha256 "5fbd8b4d87c77bf5080cb2cea4718700c2c11c38c3210dfc5f34b88b6dbd86ff"

  depends_on "go" => :build

  def install
    etc.install Dir["etc/lcl"]

    ENV["GOPATH"] = buildpath
    lcl_path = buildpath/"src/github.com/ken109/lcl/"
    lcl_path.install buildpath.children

    cd lcl_path do
      system "go", "mod", "download"
      system "go", "build"
      bin.install "lcl"
    end
  end

  test do
    system "false"
  end
end
