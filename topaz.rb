# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.20.27"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.27/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "1f7d811fe92982e319458815f699e21f61746287171158c0d9be9dcaa432d5c8"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.27/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "e40a304bf5e9f605bcf5000dec69704b951d5483ab1f60d4fc1b521ffd77cc28"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.27/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "6806af74705ba8a0725ff156d21d1fbc563cfc9136278705387414872f856113"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.27/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "ce31094793c8928fa25e278eb9bbcf14d5927b0af722a7342792c618da2a2952"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
