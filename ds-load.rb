# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class DsLoad < Formula
  desc "DS Load CLI"
  homepage "https://docs.aserto.com/"
  version "0.0.5"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.5/ds_load_0.0.5_darwin_arm64.zip"
      sha256 "d08203f8aa02136e0e957ae0595ac6bc676c7d60c7553eb30a40381d25132c9b"

      def install
        bin.install "ds-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.5/ds_load_0.0.5_darwin_x86_64.zip"
      sha256 "165daa386bdceccf8f854164b8f65008e7b375eb424c532caae70a020388da8e"

      def install
        bin.install "ds-load"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.5/ds_load_0.0.5_linux_arm64.zip"
      sha256 "74b647b72c01763491fe4a513d6272763db68865b8f05fa0dab4eef764bd6edf"

      def install
        bin.install "ds-load"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/aserto-dev/ds-load/releases/download/v0.0.5/ds_load_0.0.5_linux_x86_64.zip"
      sha256 "b31d7a85f954f094dbf020d1ed64e80f7af30638ff96de3fa567806b95ab13ab"

      def install
        bin.install "ds-load"
      end
    end
  end

  test do
    system "#{bin}/ds-load version"
  end
end
