# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsLoad < Formula
  desc "DS Load CLI"
  homepage "https://docs.aserto.com/"
  version "0.0.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.7/ds_load_0.0.7_darwin_arm64.zip", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "28ebacf0969977e0bacbe27a50f0fa10b41ba69e549e5e5779b632982afd5552"

      def install
        bin.install "ds-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.7/ds_load_0.0.7_darwin_x86_64.zip", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "44e6407b61406341ff50b581aa28cca92068d2ccdebf335054dab5afad5f810e"

      def install
        bin.install "ds-load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.7/ds_load_0.0.7_linux_arm64.zip", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fd0696266d6bf3b9eb75be697c1b203bfc57307527ea352abbff124e35af4bd3"

      def install
        bin.install "ds-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.7/ds_load_0.0.7_linux_x86_64.zip", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "52845e552642a747ad1723c95b4fb526bc2ca75c34f083f0e2dac660d606a039"

      def install
        bin.install "ds-load"
      end
    end
  end

  test do
    system "#{bin}/ds-load version"
  end
end
