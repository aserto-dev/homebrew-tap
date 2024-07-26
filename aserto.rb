# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://docs.aserto.com/"
  version "0.32.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/aserto/releases/download/v0.32.0/aserto_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "e5e1bd8b316d150b56f1eb8710eb2cad1137fd3879df8bbf5f433b310b20f1a3"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto/releases/download/v0.32.0/aserto_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "b3e3f9f0fbc7bfdcf4aa9428bd0b569e42bd5a3428b2b684cee41570febc3f3d"

      def install
        bin.install "aserto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/aserto/releases/download/v0.32.0/aserto_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "cf4f6670e857d20dccc3a7f187e96ec6621b25cdc18213703018dcbdfecec271"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto/releases/download/v0.32.0/aserto_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "497a18c4e24f4e607127c99ec4c40e5a49235b121d44eca13c3c91b862516216"

      def install
        bin.install "aserto"
      end
    end
  end

  test do
    system "#{bin}/aserto version"
  end
end
