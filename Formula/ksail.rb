class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.0.17/ksail.tar.gz"
  sha256 "b02114bbffb98f6f74816beddbe2c58f94837b27241faedce3b0ebde33b18f85"
  version "1.0.17"
  license "MIT"

  depends_on "gnupg"

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ksail-osx-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-osx-amd64" => "ksail"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "ksail-linux-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-linux-amd64" => "ksail"
      end
    end
  end
end
