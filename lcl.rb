class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.2.1.tar.gz"
  sha256 "e05cf86a04bae8e4b5b586d5bf6352e33ccbe6cf9b6217d9b5f9cbabad236652"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
