# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://docs.aserto.com/"
  version "0.8.12"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.8.12/aserto_darwin_arm64.zip", :using => CurlDownloadStrategy
      sha256 "7430fb080494e507f1acf21396de119d299a5aa5403d98f5549659fb4ed13319"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.8.12/aserto_darwin_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "1dd2ef3e38358ca628ac323c4d71c394a2944b60a54496739b79812f58c5cc3e"

      def install
        bin.install "aserto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.8.12/aserto_linux_arm64.zip", :using => CurlDownloadStrategy
      sha256 "88247f76be04aac86d7dc3a2cdb60b8189c095009388c17b2ea47d74d5f8f0bd"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.8.12/aserto_linux_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "be68f5d4f3f2e35b8cb6a3beb107298f625040401ea574fd32786946b98a4316"

      def install
        bin.install "aserto"
      end
    end
  end

  test do
    system "#{bin}/aserto version"
  end
end
