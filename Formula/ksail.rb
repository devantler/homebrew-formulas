class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.0.33/ksail.tar.gz"
  sha256 "a5c958de9f787c32f0c3652c1c3dd250020bef00c36a08ca712c03d8ec610cdc"
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
