class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.2.2/ksail.tar.gz"
  sha256 "7fbdbbf92b26ecbddf9507417ea1dec8deae32567036aaaf23ed6ac604883c82"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

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
