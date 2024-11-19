# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.32.35"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.35/topaz_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "a152f576de27838186d1b6548e25f2bea6b8d33e2f4a908263b6eb43ce727d44"

      def install
        bin.install "topaz"
      end
    end
    on_arm do
      url "https://github.com/aserto-dev/topaz/releases/download/v0.32.35/topaz_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "3d905e0b24750c45bdcea68264e1086ceb42d6d67d206424764fc9540f6649b7"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.35/topaz_linux_x86_64.zip", using: CurlDownloadStrategy
        sha256 "bcba14595ae7f1ad9f1acb9b1689fd20dd69d45466e198c29adcf4170a2f1c86"

        def install
          bin.install "topaz"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/aserto-dev/topaz/releases/download/v0.32.35/topaz_linux_arm64.zip", using: CurlDownloadStrategy
        sha256 "13612d74b582ba00c97885095b115b0ee327acd19bace12b72f555fa7eeaf7df"

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
