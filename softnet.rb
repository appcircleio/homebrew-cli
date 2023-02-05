# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Softnet < Formula
  desc "Software networking with isolation for Tart"
  homepage "https://github.com/cirruslabs/softnet"
  version "0.6.2"
  depends_on :macos

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/cirruslabs/softnet/releases/download/0.6.2/softnet.tar.gz"
      sha256 "6f17e589e4a48157bc6020bdebae8e166cee88b48964799e9e4f06677d7a32e7"

      def install
        bin.install "softnet"
      end
    end
  end

  def caveats
    <<~EOS
      See the Github repository for more information
    EOS
  end
end
