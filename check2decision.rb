# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Check2decision < Formula
  desc "Converts directory check assertions into authorizer check_decision assertions"
  homepage "https://github.com/aserto-dev/check2decision"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.1.0/check2decision-darwin-amd64.zip", using: CurlDownloadStrategy
      sha256 "b460d7ac09ce4e3fd073815c945235efc3bcb0173aad6472ca34d82f1af6b441"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.1.0/check2decision-darwin-arm64.zip", using: CurlDownloadStrategy
      sha256 "5aa5a90ba641be6e46f6eea1726984105adce995b53d7e50805c63c44fc4fb84"

      def install
        bin.install "check2decision"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.1.0/check2decision-linux-arm64.zip", using: CurlDownloadStrategy
      sha256 "17997d692c6e81b9a4e52a33f6b61229790b21b7d9a36cc4e4e17062f6ce0af4"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.1.0/check2decision-linux-amd64.zip", using: CurlDownloadStrategy
      sha256 "a457b338fed5423893ab6a506d05defc1d9f2a79fd953e3587f8a4bd27a90eab"

      def install
        bin.install "check2decision"
      end
    end
  end

  test do
    system "#{bin}/check2decision --version"
  end
end
