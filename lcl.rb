class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.7.tar.gz"
  sha256 "db54e92be375ddd256c034c11d545f67d2f9d149b8d19d8d6ee91374599b5f30"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
