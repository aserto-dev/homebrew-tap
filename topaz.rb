# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Topaz < Formula
  desc "Topaz CLI"
  homepage "https://www.topaz.sh/docs/"
  version "0.20.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.1/topaz_darwin_arm64.zip", :using => CurlDownloadStrategy
      sha256 "6880afecacec19cd9975627c5ecacf6ac4f6ef12d705710169089931eb4245ef"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.1/topaz_darwin_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "675f0f7c7033e02455e946da94c2f46e465f5171a04ee43954dd6a7be048c747"

      def install
        bin.install "topaz"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.1/topaz_linux_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "eb899e1727ed65a8e73e9467895286edfd5c5958fd597316bf280b4769c3d626"

      def install
        bin.install "topaz"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/topaz-cli/topaz/0.20.1/topaz_linux_arm64.zip", :using => CurlDownloadStrategy
      sha256 "ef6bfac5927dd176c8e0f4521028919e50540ea5c35787652e29066dbba967f8"

      def install
        bin.install "topaz"
      end
    end
  end

  test do
    system "#{bin}/topaz version"
  end
end
