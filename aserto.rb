class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  license "MIT"
  version "0.0.13"

  if OS.mac?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.13/aserto_0.0.13_darwin_x86_64.zip"
    sha256 "5595aecd699e28aeb572ce02dd40efb0d4de181ac428e9818ad8fa3ce39a5e5b"
  elsif OS.linux?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.13/aserto_0.0.13_linux_x86_64.zip"
    sha256 "f0d049de3e7f7b31eb20fff69586b76a6acf99d4cbadc812106bf23d1c8f1445"
  end

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
