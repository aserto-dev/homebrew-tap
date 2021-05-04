class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  license "MIT"
  version "0.0.9"

  if OS.mac?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.9/aserto_0.0.9_darwin_x86_64.zip"
    sha256 "b88b2d5ee8a9c424f400156e371443dda7f561e1591c68c5542d3f13542e1019"
  elsif OS.linux?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.9/aserto_0.0.9_linux_x86_64.zip"
    sha256 "05d5b6238213684c298c265b5ae90aa52b85cac53d43c909d5776c5a886911c4"
  end

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
