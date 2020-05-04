class Loc < Formula
  desc ""
  homepage ""
  url "https://github.com/ken109/homebrew-lcl/archive/1.0.1.tar.gz"
  sha256 "d134c7c99a679318082525502e0331c17f897e1ace5a88956e4bb29b5db45075"

  def install
      bin.install "bin/lcl"
      etc.install Dir["lcl"]
  end

  test do
    system "false"
  end
end
