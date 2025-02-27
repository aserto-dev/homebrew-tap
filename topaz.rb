# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.54"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.54/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "00a6d595c5d156a1cb2a33c120293304792edc266c93dd3f000a12c933f27505"

      def install
        bin.install "topaz"
      end
    end
    on_arm do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.54/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "8219e62326cf407755aea7f52417ce12d44d9c5b98daef79ff03c91e4de05f08"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.54/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
        sha256 "941071196b1c423af6f6f17834add27ae46be71541a26bd3bf4ae03ca828a024"

        def install
          bin.install "topaz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.54/topaz_linux_arm64.zip", using: CurlDownloadStrategy
        sha256 "8421427e3b720fc9444938392fb32b12dfb8b36428e931578b5a659668523997"

        def install
          bin.install "topaz"
        end
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
