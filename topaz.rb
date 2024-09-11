# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.26"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.26/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "6d0e2b36f848aec8471e83fc3301fe5ed9d71032d4c2de38dc0b278cc872131c"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.26/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "663d315e39e65128b484e59fc09af0fe77c8e316a122feddaf8ca60b4d8bc5ec"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.26/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "4805254f4b55baa5ecb6e2b1b7cdadec43d0468c536eb0de0032cd6b78bdc58f"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.26/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "50865b76d03f796cdcd98875893f09354b35796ab5de0e2d69f50072639cf022"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
