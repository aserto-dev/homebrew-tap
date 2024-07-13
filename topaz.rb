# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.16"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.16/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "7fdfa1f6c0ea517636b9b844ef48426c7c0daeb535ceaf7d44921b3480bacd8c"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.16/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "58fa4b18c0622be7d804b01b2bc7f0e253ad2d9091aa770e2d3ec47dae5b93cd"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.16/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "9cc877d75b77db9068f133577cf08a20a8ce7c8ab64961548930ba16ca39ec8d"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.16/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "4825f20fc4906727f4b4d478f95c6033ebcd8a586d7c040cb64791865f7e531c"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
