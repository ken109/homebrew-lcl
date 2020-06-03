class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.4.tar.gz"
  sha256 "2a3fcefbbb071d0c2108def574bb7a4ffe66c3f2304835672f0e5f5819e66705"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
