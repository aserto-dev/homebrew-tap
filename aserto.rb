# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://docs.aserto.com/"
  version "0.20.7"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.20.7/aserto_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "05292b9da3fc7da0bac4ed59a30907b7c02f0a3b78738f3b3fb8513b45360516"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.20.7/aserto_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "2f3c681dd99f7f5c1a658392b5ccf6648c516fd67942d3084e5cc8d432722221"

      def install
        bin.install "aserto"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.20.7/aserto_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "8bf68ca556c694ad8ba232717fb541063cf7bd0bdd4bb8a9853f03e76e5f1275"

      def install
        bin.install "aserto"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.20.7/aserto_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "15d4c48ddb05d47e6fa249fddffcbed7af27cec0765d39560acd6305a516eda7"

      def install
        bin.install "aserto"
      end
    end
  end

  test do
    system "#{bin}/aserto version"
  end
end
