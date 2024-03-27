# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.31.10"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.10/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "f526f2c59bf584cfccc68595f2e929bb5a9d9e6637e22201d0362a5c36b5bf57"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.10/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "f167c8258617bc6aadeb2a0a46bc5f5bdc10421724e21140015835825e621190"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.10/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "fe05797fe49c64f01a9668991cca7cbd6c08110cc2b8b37b306e3a4354ed6583"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.10/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "421d245af135f87eeda69a7d2e9f53b113b7f98c7caaf7312deacbd490d5eca6"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
