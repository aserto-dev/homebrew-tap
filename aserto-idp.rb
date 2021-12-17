# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "lib/custom_download_strategy"
class AsertoIdp < Formula
  desc "aserto idp CLI for importing and exporting users to/from IDP providers."
  homepage "https://aserto.com/"
  version "0.0.2"
  license "Apache License Version 2.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.2/aserto-idp0.0.2_darwin_x86_64.zip", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "7ec314aac8cefebad8999f60b099bf1718d9eb100657e1ee107b18da42e2a185"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.2/aserto-idp0.0.2_darwin_arm64.zip", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c417279dc4510e39a26ec8e50716b85ad666d2c540731b01c48f3869522bcd6d"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.2/aserto-idp0.0.2_linux_arm64.zip", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "a3523764463d7582254e376e6cfac7da9b41f3d91e9053422335a377beed1534"

      def install
        bin.install "aserto-idp"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/aserto-idp/releases/download/v0.0.2/aserto-idp0.0.2_linux_x86_64.zip", :using => CustomGitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6ca0684ff45ab539552eb739f390e9d6fa98a85366a6c780f22f1fc3110d01e4"

      def install
        bin.install "aserto-idp"
      end
    end
  end

  test do
    system "#{bin}/aserto-idp version"
  end
end
