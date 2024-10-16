# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.31"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.31/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "84ff9a444ca9cc6c0bc6881cb8010e7319f5213406491a942d84ba4f8d39ad94"

      def install
        bin.install "topaz"
      end
    end
    on_arm do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.31/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "4cb79bed5f546f14ea0c6d8c6a691e490a86d9bb98846995fb9d8137f8eb25ab"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.31/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
        sha256 "d6874cb15c9f864fd18f94bfd2563b1ed3aecc594c9005ab65de2af578429f8a"

        def install
          bin.install "topaz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.31/topaz_linux_arm64.zip", using: CurlDownloadStrategy
        sha256 "bca7e7ea9e416cc13ffca9ac5491950158cef7d6be8fb1b75cacd3a10592b3d7"

        def install
          bin.install "topaz"
        end
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
