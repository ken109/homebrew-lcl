class Lcl < Formula
  desc "Build local environment"
  homepage "https://github.com/ken109/lcl"
  url "https://github.com/ken109/lcl/archive/1.0.0.tar.gz"
  sha256 "72d698aff352e8f97bc86e426cba5e1844acfa578b490d28044f3cd6983bdde8"

  depends_on "dep" => :build

  def install
    ENV["GOPATH"] = buildpath
    lcl_path = buildpath/"src/github.com/ken109/lcl/"
    lcl_path.install buildpath.children

    cd lcl_path do
      system "dep", "ensure", "-vendor-only"
      system "go", "build"
      bin.install "lcl"
    end

    etc.install Dir["etc"]
  end

  test do
    system "false"
  end
end
