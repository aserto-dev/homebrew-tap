# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoIdp < Formula
  desc "Aserto IDP CLI"
  homepage "https://aserto.com/"
  version "0.8.3"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.8.3/aserto-idp0.8.3_darwin_x86_64.zip"
      sha256 "00b39fa4c462df17d150025401c9fce54fd8aca50ada19f46ca8b60899bdb714"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.8.3/aserto-idp0.8.3_darwin_arm64.zip"
      sha256 "ac25771b9856b9cb1e915fd32c267562268e12c99687c179467990685c4664c3"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.8.3/aserto-idp0.8.3_linux_arm64.zip"
      sha256 "b1598c27947eaa5dbbc51b303d05333f61b7c8eb28199d0b12cd61f6ae3c5332"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.8.3/aserto-idp0.8.3_linux_x86_64.zip"
      sha256 "6e5b5f75a812ae9ad908a2c2fdba84417b22bfaef579e70cfeda96d36359582d"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  test do
    system "#{bin}/aserto-idp version"
  end
end
