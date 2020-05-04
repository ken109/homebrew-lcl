class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.0.1.tar.gz"
  sha256 "07dc3bfd27e4f75de4d46ad5225b9dbf8a82e3d9f5c961c1eaa502aeae0f91eb"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
