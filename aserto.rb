class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  license "MIT"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.1/aserto_v0.0.1_darwin_x86_64.zip"
    sha256 "55353926d161e64eea3544b41709a3bb7dfa35e25ca558376f200b0081c727b5"
  elsif OS.linux?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.1/aserto_v0.0.1_linux_x86_64.zip"
    sha256 "fb87ae83e56c82d367e0dc7c42546474b7a10c1ae3da77e3db449915db7a2f00"
  end

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
