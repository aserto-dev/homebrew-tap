# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsLoad < Formula
  desc "DS Load CLI"
  homepage "https://docs.aserto.com/"
  version "0.30.9"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.9/ds-load_0.30.9_darwin_arm64.zip", using: CurlDownloadStrategy
      sha256 "049e542fee3f120441880c86ea3991ee02e1479de5c88abafba9545c4d969103"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
        bin.install "ds-load-ldap"
        bin.install "ds-load-fusionauth"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.9/ds-load_0.30.9_darwin_x86_64.zip", using: CurlDownloadStrategy
      sha256 "88c7849fa6f7de7b1d24c2a5d9e0118a3fc9e2619808cceb136e2673cf87f9e7"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
        bin.install "ds-load-ldap"
        bin.install "ds-load-fusionauth"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.9/ds-load_0.30.9_linux_arm64.zip", using: CurlDownloadStrategy
      sha256 "f80a247478efedfa7ba1f7f65b99389b06c8b47b3926418629ad7084a180d158"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
        bin.install "ds-load-ldap"
        bin.install "ds-load-fusionauth"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.30.9/ds-load_0.30.9_linux_x86_64.zip", using: CurlDownloadStrategy
      sha256 "4d19bbe7b5951d96b09fb07aaedd6006c6ab164e3d808c640ce8854aaeb7d03a"

      def install
        bin.install "ds-load"
        bin.install "ds-load-auth0"
        bin.install "ds-load-azuread"
        bin.install "ds-load-cognito"
        bin.install "ds-load-google"
        bin.install "ds-load-okta"
        bin.install "ds-load-ldap"
        bin.install "ds-load-fusionauth"
      end
    end
  end

  test do
    system "#{bin}/ds-load version"
  end
end
