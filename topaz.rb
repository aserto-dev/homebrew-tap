# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.20.22"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.22/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "31b6b010d328992bb3e5edfe1ade8ca40e4b7c402fb4eb2bb27485e651ba3eeb"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.22/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "460f94e2922d4cb963b261ca0ba0b6e9830dd4e35b4a7b4059863aa4cba16c18"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.22/topaz_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "e3a7c7f262f3705a6cfdbf97ac34a1885f0f0865e43144f745812ede0b6e4a56"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.22/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "bed626e858a8851d422c1123ad6e598a6714710316f3475d72220f440a991538"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
