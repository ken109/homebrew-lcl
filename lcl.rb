class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/1.0.1.tar.gz"
  sha256 "15ebca3db2555e1ff39246dfda49e4242718acf7399093e13483072a3bbd5589"

  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    lcl_path = buildpath/"src/github.com/ken109/lcl/"
    lcl_path.install buildpath.children

    cd lcl_path do
      system "go", "mod", "download"
      system "go", "build"
      bin.install "lcl"
    end

    etc.install Dir["etc"]
  end

  test do
    system "false"
  end
end
