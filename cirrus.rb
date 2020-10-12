# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.11.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.11.0/cirrus-darwin-amd64.tar.gz"
    sha256 "e74f026ce400df39156e96b155623a8285110d357a8ecd3df141bb755bb779b8"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.11.0/cirrus-linux-amd64.tar.gz"
      sha256 "802e9a9f273cb646f473d532b3d9418b11557cd36efd2fa017ed04b31c1b28b7"
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
