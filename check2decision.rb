# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Check2decision < Formula
  desc "Converts directory check assertions into authorizer check_decision assertions"
  homepage "https://github.com/aserto-dev/check2decision"
  version "0.0.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.6/check2decision_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "bff5d8e7d840fea83f58c935c1ed40b4d4d76ba4de097850a9f8ea22bbf79142"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.6/check2decision_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "e334de50562ca349516652c4080b1c163d8c3c7a24fc32b623aa89b7f07443cf"

      def install
        bin.install "check2decision"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.6/check2decision_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "dfa0107b6f6fec06ed6a8a7ec2023bda7e90e632ba15854a0b8153438afaeb54"

      def install
        bin.install "check2decision"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/check2decision/releases/download/v0.0.6/check2decision_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "6e434bee71b8a4e55da854b6ab495c043dd1dd3ebf3662b2057354b36bc5555f"

      def install
        bin.install "check2decision"
      end
    end
  end

  test do
    system "#{bin}/check2decision --version"
  end
end
