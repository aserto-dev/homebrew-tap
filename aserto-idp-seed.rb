# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoIdpSeed < Formula
  desc "Aserto IDP seed tool"
  homepage "https://aserto.com/"
  version "0.0.4"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "http://github.aserto-dev/aserto-idp-seed/releases/v0.0.4/aserto-idp-seed_0.0.4_darwin_x86_64.zip", :using => GitDownloadStrategy
    sha256 "243dbe1b8b2ad8c78920b300e6657dcb23231114493d38d0f7fcdbab49935ce0"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "http://github.aserto-dev/aserto-idp-seed/releases/v0.0.4/aserto-idp-seed_0.0.4_linux_x86_64.zip", :using => GitDownloadStrategy
    sha256 "c11a4a1f017be9565eadbbd26103f3e1a89a6c221c74f0b9d184bd648b083d92"
  end

  def install
    bin.install "aserto-idp-seed"
  end

  test do
    system "#{bin}/aserto-idp-seed version"
  end
end