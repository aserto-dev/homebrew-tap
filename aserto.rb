class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  license "MIT"
  version "0.0.1"

  if OS.mac?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.2/aserto_v0.0.2_darwin_x86_64.zip"
    sha256 "f3a0ddb66d717c4fba63cb86186221383f5173179fbafe723ab0f89b5402c35e"
  elsif OS.linux?
    url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.2/aserto_v0.0.2_linux_x86_64.zip"
    sha256 "05af2a7c4589d9f6931f13f4286b4374f77625a4b4cf07d6de05b187eb880b83"
  end

  bottle :unneeded
  
  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
