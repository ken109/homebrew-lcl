class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.0.tar.gz"
  sha256 "c9bc7ec5d1765ea41cb321e35e71aa9f6e61bef6523d61b38afa6c136d536cbc"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
