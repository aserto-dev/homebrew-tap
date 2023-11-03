# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsLoad < Formula
  desc "DS Load CLI"
  homepage "https://docs.aserto.com/"
  version "0.30.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.0/ds-load_0.30.0_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "a76358aeff16b6af009169ac56c3e8440187a101ba5168d9e065b88053264a95"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.0/ds-load_0.30.0_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "f982e1c421b6109ef7f2c1acda04c8c37990eb7a4223f6e7de79b50cb66f4833"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.0/ds-load_0.30.0_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "f9fd7ecfd4d7194b82b7f2a7b0ffb6e8480a2bf43449b1ad6831bb9dc4bb5f93"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.0/ds-load_0.30.0_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "89eaada15c38ac6f622006120abf815559f43e8bf986a6385a44d01b0b8e278d"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
      end
    end
  end

  test do
    system "#{bin}/ds-load version"
  end
end
