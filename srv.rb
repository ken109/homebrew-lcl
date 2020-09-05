class Srv < Formula
  desc "Build staging environment"
  homepage "https://github.com/ken109/srv"
  url "https://github.com/ken109/srv/archive/1.0.3.tar.gz"
  sha256 "0e15c8f6aaa8fe38b49d56f0c3f6e5ca48ba609666cd085df9ed8d7c7a711667"

  depends_on "go" => :build

  def install
    etc.install Dir["etc/srv"]

    ENV["GOPATH"] = buildpath
    srv_path = buildpath/"src/github.com/ken109/srv/"
    srv_path.install buildpath.children

    cd srv_path do
      system "go", "mod", "download"
      system "go", "build"
      bin.install "srv"
    end
  end

  test do
    system "false"
  end
end
