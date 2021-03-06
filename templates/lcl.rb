class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/+VIRSION+.tar.gz"
  sha256 "+SHA256+"

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
