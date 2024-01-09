class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/archive/refs/tags/v1.0.17.tar.gz"
  sha256 "deec9f782225274af358d01e31dd50a36d25dde481342505cb230ce0ad06ce69"
  version "1.0.17"
  license "MIT"
  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ksail-v#{version}-osx-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-v#{version}-osx-amd64" => "ksail"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "ksail-v#{version}-linux-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-v#{version}-linux-amd64" => "ksail"
      end
    end
  end
end
