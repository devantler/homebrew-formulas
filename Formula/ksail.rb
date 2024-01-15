class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.0.34/ksail.tar.gz"
  sha256 "afc92f1aef7de324c43f57571514c37b53d6520b414a445442d9490bf54f6f19"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  depends_on "gnupg"

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ksail-darwin-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-darwin-amd64" => "ksail"
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
