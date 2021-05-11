# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoIdpSeed < Formula
  desc "Aserto IDP seed tool"
  homepage "https://aserto.com/"
  version "0.0.8"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.aserto-dev/aserto-idp-seed/releases/download/v0.0.8/aserto-idp-seed_0.0.8_darwin_x86_64.zip", :using => GitDownloadStrategy
    sha256 "0d1a066c254c74c44d47fdc6db7d25e1aaf4ced38c74e947c83009541a12087e"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.aserto-dev/aserto-idp-seed/releases/download/v0.0.8/aserto-idp-seed_0.0.8_linux_x86_64.zip", :using => GitDownloadStrategy
    sha256 "e1f9a0ab96d8d498b6aa8895efb3f67a19cfcfa8769f9ae2a80970b2cc76bf15"
  end

  def install
    bin.install "aserto-idp-seed"
  end

  test do
    system "#{bin}/aserto-idp-seed version"
  end
end
