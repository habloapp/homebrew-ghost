class GhostCli < Formula
  desc "CLI for Ghost Networks — manage networks, devices, and WireGuard tunnels"
  homepage "https://gh-o.net"
  version "0.36.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/macos/ghost-cli.tar.gz"
    sha256 "a4a69c620356caa4a257819a2ffb8b69ab354e1866f9e41f2e9b83753ec50dfb"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-x64/ghost-cli.tar.gz"
      sha256 "d72ae600784527fa929dbacfb8da04e90f26da052b237a7cd3f99b5ad02b733b"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-arm64/ghost-cli.tar.gz"
      sha256 "6f6a8aeb052918bca552103a41ab160493bbf2d81795cf8597d2be5b8ffa47f1"
    end
  end

  def install
    bin.install "ghost-cli"
  end

  test do
    assert_match "ghost-cli version", shell_output("#{bin}/ghost-cli version")
  end
end
