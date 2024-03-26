# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.31.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.9/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "000d4657e9850fa99d83613dcca9657f09e96fea451705c49b005ed981463ee3"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.9/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "88f812d933206372f7cf4cda5b6a5c7549ae8c75c6332b3327fc4ed17eae86ad"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.9/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "4ade12f8ca1c9b341379a28ec297dc34e8d604669494e19506809562b2446dfd"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.31.9/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "7d147d5378b14f399d04df3a6a1a72796368386ad58113bb6327dc5c9baed684"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
