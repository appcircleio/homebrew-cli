# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.63.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.63.0/cirrus-darwin-amd64.tar.gz"
      sha256 "11d92a85af970d36b49ab44521c64d5dcbc0f2082ad385ac138274aa53948abd"
    end
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.63.0/cirrus-darwin-arm64.tar.gz"
      sha256 "bdf0ccd6943ea8f00ee3b9c7332b594e28a326db1e7dc4fae8ea7e320ac70faa"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.63.0/cirrus-linux-amd64.tar.gz"
      sha256 "26ad8477775142da2bbddc692b2ad5f3adc704c4cd851ac79e989cdaf2fefbf6"
    end
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.63.0/cirrus-linux-arm.tar.gz"
      sha256 "dfc8d40e1dd9f7d21e5374a857f18b513f4269647914a700f39375d0daad23dd"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.63.0/cirrus-linux-arm64.tar.gz"
      sha256 "9cf162543bf63b3920d2a44f68a192b2d62f475f1ed072ac67badbf1e0d93d9c"
    end
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
