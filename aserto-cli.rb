# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class AsertoCli < Formula
  desc "Aserto CLI"
  homepage "https://github.com/aserto-dev/aserto-cli"
  url "https://github.com/aserto-dev/aserto-cli/releases/download/v0.0.1/aserto_v0.0.1_darwin_x86_64.zip"
  sha256 "55353926d161e64eea3544b41709a3bb7dfa35e25ca558376f200b0081c727b5"
  license "MIT"
  version "0.0.1"

  def install
    bin.install "aserto"
  end

  test do
    system "#{bin}/aserto version"
  end
end
