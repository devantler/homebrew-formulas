class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  version "1.0.15"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v1.0.15/ksail-v1.0.15-osx-arm64.tar.gz"
      sha256 "deec9f782225274af358d01e31dd50a36d25dde481342505cb230ce0ad06ce69"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v1.0.15/ksail-v1.0.15-osx-x64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v1.0.15/ksail-v1.0.15-linux-arm64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v1.0.15/ksail-v1.0.15-linux-x64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    end
  end

  license "MIT"
  def install
    bin.install "ksail"
  end
end
