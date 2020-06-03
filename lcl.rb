class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.3.tar.gz"
  sha256 "58b1a8124cda368b78cc75eaa48bc3e7442e160e7a3b09a4e3bbb24a77358463"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
