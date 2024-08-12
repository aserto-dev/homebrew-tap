# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Check2decision < Formula
  desc "Converts directory check assertions into authorizer check_decision assertions"
  homepage "https://github.com/aserto-dev/check2decision"
  version "0.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.1/check2decision_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "c443e68da53256bd33ed4eccf5d7548a10d22b6216323c8e071e786ca105b56a"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.1/check2decision_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "3fb0797e3866b556ba30e90b6f927676faa2fe92f62977d539a2f9ed9a9e0db7"

      def install
        bin.install "check2decision"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.1/check2decision_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "72793d2c692c0472791b6ae237324c252c3e697950e7581d258bbcf0825afc4e"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.1/check2decision_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "b95238d62cbefc102994dd6a52a65c5bbb98862334eb2974c2f71c4ef7bcf8f5"

      def install
        bin.install "check2decision"
      end
    end
  end

  test do
    system "#{bin}/check2decision --version"
  end
end
