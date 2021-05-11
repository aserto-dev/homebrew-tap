# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class AsertoIdpSeed < Formula
  desc "Aserto IDP seed tool"
  homepage "https://aserto.com/"
  version "0.0.9"
  license "MIT"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/aserto-dev/aserto-idp-seed/releases/download/v0.0.9/aserto-idp-seed_0.0.9_darwin_x86_64.zip", :using => GitDownloadStrategy
    sha256 "b7451b8af84b31ca275e4be19e24183c227da6b5c361545edc6e740ece85341f"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/aserto-dev/aserto-idp-seed/releases/download/v0.0.9/aserto-idp-seed_0.0.9_linux_x86_64.zip", :using => GitDownloadStrategy
    sha256 "86a2f923d525dc4edaf5cbc0d05e6c8d1d873b3df8ccae53e4c2a661de7b31ab"
  end

  def install
    bin.install "aserto-idp-seed"
  end

  test do
    system "#{bin}/aserto-idp-seed version"
  end
end
