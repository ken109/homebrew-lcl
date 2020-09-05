class Srv < Formula
  desc "Build staging environment"
  homepage "https://github.com/ken109/srv"
  url "https://github.com/ken109/srv/archive/1.0.1.tar.gz"
  sha256 "cfac484ab06ee4139d2758c2e4a32a4ce15ea7fe395d6993bf35c28285ed1c72"

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
