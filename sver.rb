# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Sver < Formula
  desc "sver semantic version calculator"
  homepage "https://aserto.com/"
  version "1.2.15"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.15/sver1.2.15_darwin_x86_64.zip"
      sha256 "61621a30352e1753b41cdcf95a7b9f1f9c94f08315d5dd0b3069f7957b37e0d7"
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.15/sver1.2.15_darwin_arm64.zip"
      sha256 "b1d0cc0389faf578e3a4b9fa43443d42de16551dc8d3531136a51a4e7d481067"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.15/sver1.2.15_linux_x86_64.zip"
      sha256 "d4b82b3c8c2c4784ba299eb360e5780c0a8452ef28862b89858605704ca896c3"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/sver/releases/download/v1.2.15/sver1.2.15_linux_arm64.zip"
      sha256 "9b667d71fdd9a3b29ba498f1046fc3c403fa68efa9ebe96a007e6f04f178c7e0"
    end
  end

  def install
    bin.install "sver"
  end

  test do
    system "#{bin}/sver version"
  end
end
