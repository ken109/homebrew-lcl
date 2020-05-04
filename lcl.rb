class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.0.2.tar.gz"
  sha256 "5388864b495013c49319cf6ffb6c00d75ab7df7d7e58cbc593f039d2c2f6da4a"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
