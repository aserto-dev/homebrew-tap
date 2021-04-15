class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.1/aserto_v0.0.1_darwin_x86_64.zip"
  sha256 "55353926d161e64eea3544b41709a3bb7dfa35e25ca558376f200b0081c727b5"
  license "MIT"
  version "0.0.1"

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
