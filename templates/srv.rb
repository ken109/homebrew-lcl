class Srv < Formula
  desc "Build staging environment"
  homepage "https://github.com/ken109/srv"
  url "https://github.com/ken109/srv/archive/+VIRSION+.tar.gz"
  sha256 "+SHA256+"

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
