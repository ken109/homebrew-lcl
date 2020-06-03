class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.5.tar.gz"
  sha256 "c278901e244a0a61578a88d05abb22683670eba13af54a309a95da341b8ff6ff"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
