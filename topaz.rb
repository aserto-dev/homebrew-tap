# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.20.32"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.32/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "f85a3cb3a730c0a32a17181302c368a0f4b725481be5ef1eee30aa4d24d1ef93"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.32/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "fa6967bb7c876fa42904d9a91cdb2def2cc91bd113dae34c2665cdbc2e96e5f3"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.32/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "d97223aaa0ad1260c6ad93895e2761334a793b48827ea6c59291a1c2cfe5369b"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.32/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "56b78566707b48eea20cc2b2a22d74d8420ff8e9f7c40b8ea13a071b6d2ea97a"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
