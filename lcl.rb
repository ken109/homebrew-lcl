class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.2.0.tar.gz"
  sha256 "4c1205624937b902a85f548d2a24c37b19325c8b5dc760e5f24f9019a1aaad84"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
