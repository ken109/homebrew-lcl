class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.9.tar.gz"
  sha256 "6ee25a29eceffe5ff7f4d4222d83a601f57c379f64e3d2e1e6fbdfd9550894cf"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
