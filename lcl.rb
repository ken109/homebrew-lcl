class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.6.tar.gz"
  sha256 "b578d0fee6dfc93c21b5f64971f348c705e37e65041fc4684eb6f90e8faf763d"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
