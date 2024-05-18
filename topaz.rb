# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.4/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "59ebabd3ae7780479c6caea9278f2d146d271262476522be10c2eaba40b27715"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.4/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "2ea3ea946dc53d94620de65f4e35d55e57d8a31efc627c318c944691389961d2"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.4/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "2b4715fc912346578aff1603f9903d46043025cade89c6e4abd500d74208691f"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.4/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "955dd7dc328fa8f33d17dfe26a87e4ac4bb95565e560bc2847a9928f39fc71ef"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
