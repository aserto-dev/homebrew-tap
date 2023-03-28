# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.20.28"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.28/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "99a023a144b4b4ae28e72e93429e82610c82f766ea65161d42dc78f6327be1d1"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.28/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "f3a1eade88cf14f474887ed154bf56ae1ce9a6b6907e1e3437ea9c15d030126a"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.28/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "cc15e3578ac8d3a4d37c5082b604095fcbee4e286d5d83c57a71541cf53cc6bc"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.28/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "4ad1c46bfbc602f82d07bb820e5d6ded13d4496d87b607562f987a8bde8b9f1d"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
