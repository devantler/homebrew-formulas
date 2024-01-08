class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  version "1.0.11"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-v#{version}-osx-arm64.tar.gz"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-v#{version}-osx-x64.tar.gz"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-v#{version}-linux-arm64.tar.gz"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-v#{version}-linux-x64.tar.gz"
    end
  end

  def install
    bin.install "ksail"
  end
end
