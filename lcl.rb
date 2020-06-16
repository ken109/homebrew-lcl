class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.8.tar.gz"
  sha256 "e75fc5d26db31fac215f449adad7edb213f00a9fc867159a8c888916f5762a97"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
