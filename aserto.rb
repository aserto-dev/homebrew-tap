# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Aserto < Formula
  desc "Aserto CLI"
  homepage "https://docs.aserto.com/"
  version "0.1.6"
  license "MIT"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.1.6/aserto_0.1.6_darwin_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "f45d9333b0e60df8baa0d92121ecb2bbd1c99f00a7ed765b59c0c7c53d90a3dc"
    end
    if Hardware::CPU.arm?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.1.6/aserto_0.1.6_darwin_arm64.zip", :using => CurlDownloadStrategy
      sha256 "cf3bcc2283cf62c0fce824ee03cc58aa4592e03df8dd24d77652e03e63306127"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.1.6/aserto_0.1.6_linux_x86_64.zip", :using => CurlDownloadStrategy
      sha256 "c81f59fdd563041059f4dfc7f25b5f9b3de83bac7e57f63d007a97a50723acb9"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://storage.googleapis.com/aserto-cli/aserto/0.1.6/aserto_0.1.6_linux_arm64.zip", :using => CurlDownloadStrategy
      sha256 "bb00afa2af3dd4ed83f7fed9cd5aafa20bad60948abb6d60e6e85ba58e5bd6dc"
    end
  end

  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
