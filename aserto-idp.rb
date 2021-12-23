# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoIdp < Formula
  desc "aserto idp CLI for importing and exporting users to/from IDP providers."
  homepage "https://aserto.com/"
  version "0.0.3"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.3/aserto-idp0.0.3_darwin_arm64.zip"
      sha256 "5bd2b9b232eea362f6490ab1880824d8b95465b2af4ccd16514c76cdb027c4aa"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.3/aserto-idp0.0.3_darwin_x86_64.zip"
      sha256 "2b243638b1edaa55a1a252d194e1040cb5fa49ac5de4130fb9f7cf5ed7137a62"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.3/aserto-idp0.0.3_linux_x86_64.zip"
      sha256 "71573d9a1a0309787fc6c0eefc58fe94044420dd87a50d8dadb675ea0b55e8fc"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.3/aserto-idp0.0.3_linux_arm64.zip"
      sha256 "d51b378b599bf1ddcf5f419cbd35f5e33e21cc8211cd50eb38e68832f7766664"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  test do
    system "#{bin}/aserto-idp version"
  end
end
