class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/1.2.10.tar.gz"
  sha256 "8c2b83a4f5e487a9a061a13895dfec4f33940b8781449bbdaf1dc38c0d387d1c"

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
