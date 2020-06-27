class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/1.0.6.tar.gz"
  sha256 "771a0f985bfce543acc72d4bcec7accb7edf4631b18ce858689d3a7e3b8f088b"

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
