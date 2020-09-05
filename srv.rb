class Srv < Formula
  desc "Build staging environment"
  homepage "https://github.com/ken109/srv"
  url "https://github.com/ken109/srv/archive/1.0.2.tar.gz"
  sha256 "7fa5373a8bb23d5a1f5f8282f5165db446176f4272d22b620180e2033c90a9bd"

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
