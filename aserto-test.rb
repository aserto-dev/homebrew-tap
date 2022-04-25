# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoTest < Formula
  desc "Aserto Test Runner"
  homepage "https://docs.aserto.com/"
  version "0.0.5"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto-test/0.0.5/aserto-test_darwin_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "c2292b1cc6460282390cf2e35ec9558bda0ef754b912b3c58a7ea0b9af60ea71"

      def install
        bin.install "aserto-test"
      end
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/aserto-cli/aserto-test/0.0.5/aserto-test_darwin_arm64.zip", :using => CurlDownloadStrategy
      sha256 "7bc01132285db440e4ceca80fee39c82ccd135223fc286c464d29fe76c2df6b0"

      def install
        bin.install "aserto-test"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/aserto-cli/aserto-test/0.0.5/aserto-test_linux_arm64.zip", :using => CurlDownloadStrategy
      sha256 "0cc6261f63400f300b5ae62e5c160016e6e544da18ed435e76b9eb1c493fb3c1"

      def install
        bin.install "aserto-test"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto-test/0.0.5/aserto-test_linux_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "2e11c272ea78d9bdb7dbb3e14c522e2a53ff67fe833875c24f214c21a1ae414d"

      def install
        bin.install "aserto-test"
      end
    end
  end

  test do
    system "#{bin}/aserto-test version"
  end
end
