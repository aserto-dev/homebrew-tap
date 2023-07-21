# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.25.4"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.25.4/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "68a68b186e1dff3a906bb8b3957bdfa1600c3b24325014671195adcc371993a5"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.25.4/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "02ba9e4d1809ca97a84d67919419d284ea909a95acfd7997687e6dd849dacb07"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.25.4/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "8a57156f4024fc9edd0a8939836a41bb92561cbe3961edf391945bfbbda70bf3"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.25.4/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "f66de43d3fbe348d71147ce15418889635f14e6195217b18b45e44cde174142e"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
