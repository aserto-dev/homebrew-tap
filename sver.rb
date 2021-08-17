# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sver < Formula
  desc "sver semantic version calculator"
  homepage "https://aserto.com/"
  version "1.2.14"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.14/sver1.2.14_darwin_x86_64.zip"
      sha256 "bd5e87f50081d543d4a24d2d3451ede99bb3c140f5b760a5e903cdce2b8d738c"
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.14/sver1.2.14_darwin_arm64.zip"
      sha256 "760eaa57ac98df0f2f6f7e4055a2002a94040b6dde6367ff7c9641e5a83fe4dc"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.14/sver1.2.14_linux_x86_64.zip"
      sha256 "4c32c49a465cf6b87576f0db65f7ad4b969c3fbda845b6ba3bb642aed110f1e1"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.14/sver1.2.14_linux_arm64.zip"
      sha256 "c6026beee724eb83e86823185631666ea67b039cbc034f456e65a460a5af2392"
    end
  end

  def install
    bin.install "sver"
  end

  test do
    system "#{bin}/sver version"
  end
end
