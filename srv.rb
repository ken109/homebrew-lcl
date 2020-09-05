class Srv < Formula
  desc "Build staging environment"
  homepage "https://github.com/ken109/srv"
  url "https://github.com/ken109/srv/archive/1.0.0.tar.gz"
  sha256 "b492d92a067496740375dcdea85d07943133aa4dd9b46c9ed17ae03e9a2e80c8"

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
