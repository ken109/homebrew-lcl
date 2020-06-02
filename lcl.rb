class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.2.tar.gz"
  sha256 "d27ddd6a6819907db8dba920e7756fcadaa272674f8a4669d7917a36f1b1f5b1"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
