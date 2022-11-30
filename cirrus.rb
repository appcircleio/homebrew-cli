# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.92.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.92.0/cirrus-darwin-arm64.tar.gz"
      sha256 "aa2498303290b3343c6adcf1c3d19b6b370605066624dbc13b03ed65438cd85e"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.92.0/cirrus-darwin-amd64.tar.gz"
      sha256 "4f5cdaa4aabeaa1615076ed9578110da93e9d0bcce1b6dde772b651f5b613d0d"

      def install
        bin.install "cirrus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.92.0/cirrus-linux-arm.tar.gz"
      sha256 "58ce3638a502fbfaf3ee4ac04b27906f4d1d0a47ff397bab88335135bb238704"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.92.0/cirrus-linux-arm64.tar.gz"
      sha256 "dc74e67d05d689bcf0bacfe701f686119ce90af8a14f7857e64951f38fc7cd33"

      def install
        bin.install "cirrus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.92.0/cirrus-linux-amd64.tar.gz"
      sha256 "224d73f617b2ec6e0665a9bb1ccd12ea6650c68979e8227895bca046289984a0"

      def install
        bin.install "cirrus"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
