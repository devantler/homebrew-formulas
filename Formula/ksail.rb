class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.0.30/ksail.tar.gz"
  sha256 "12212107370cdaaeb1c4662065eaee2cb1958d54a09567a2564d1654fc96fdcf"
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
