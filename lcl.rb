class Lcl < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/0.1.1.tar.gz"
  sha256 "133cb7ed4b11ab717bb69f1135c229ed58dc8ddf25f66622cf31745e550349af"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
