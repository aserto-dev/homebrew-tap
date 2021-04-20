class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  license "MIT"
  version "0.0.2"

  if OS.mac?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.2/aserto_v0.0.2_darwin_x86_64.zip"
    sha256 "958298198f59adedf0865c04c8917aee26bb4824818ee25f54bdd7e1db44b37b"
  elsif OS.linux?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.2/aserto_v0.0.2_linux_x86_64.zip"
    sha256 "5af35e86e6ef7365ae186b485f2d60f6c6a4d7f39503b8da3a4858b64b115e51"
  end

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
