# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.28.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.28.1/cirrus-darwin-amd64.tar.gz"
    sha256 "6f9b5f04354f402f2a49c40d0bb46c108c4dd91869fdfb3b6321b83b1233fb36"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.28.1/cirrus-linux-amd64.tar.gz"
    sha256 "652dc7671329f845cf629a24f13225aac3b9a6dd2545ff8ffcbb87ace51af241"
  end
  if OS.linux? && Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.28.1/cirrus-linux-arm.tar.gz"
    sha256 "309b7c76e5559cce0a740421426942e46801398d542b2127720dfe16c4d2eea2"
  end
  if OS.linux? && Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.28.1/cirrus-linux-arm64.tar.gz"
    sha256 "297e33167fa8796e9cd2b592452da6a520abf878c8b37090b0fb313c4a72d73a"
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
