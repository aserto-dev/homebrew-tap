# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.30.8"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.30.8/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "dcb3bd9dd8d4dada8e76c22b337e838bf8df5374d8ddbf0f7d63a64a3ac9695b"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.30.8/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "ef6e187954189ea369c2ad2e6dec54882774b366e0737276e05cdbe7a8c80654"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.30.8/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "63c19725199cf3ab27607dbd4481aab3bdac32f923e9ee8377e08029cb52c437"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.30.8/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "bea8f35119d53891e83e1d4975d647b29aa0268fb9f747afcfed8b2f409779a4"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
