class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  version "1.0.11"
  sha256 "7e50d40776ac24ed7e2306846bbe6a8760fa994195cb29ab7edc2e4105928bda"
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
