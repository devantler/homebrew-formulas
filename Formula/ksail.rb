class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.0.20/ksail.tar.gz"
  version "1.0.20"
  sha256 "d8f4e006cfdfc8b31128a54015b6113d62652f790bdb5a8ab45b01545403eb6d"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
