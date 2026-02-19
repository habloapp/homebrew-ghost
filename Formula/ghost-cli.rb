class GhostCli < Formula
  desc "CLI for Ghost Networks — manage networks, devices, and WireGuard tunnels"
  homepage "https://gh-o.net"
  version "0.2.5"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/macos/ghost-cli.tar.gz"
    sha256 "41c6d61c01518e9bf4aeda360a8269c9b6dd181f783b016d7638b5d765fbf6cb"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-x64/ghost-cli.tar.gz"
      sha256 "aacdfb878deabb2dd19e595d3f29fc2addaedd00bd5477ad139f85740ef0ad75"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-arm64/ghost-cli.tar.gz"
      sha256 "7b2e5d1db1f06f98ec0ed4b5622d22427b151059bc747a8bf6a70510f48ab3c6"
    end
  end

  def install
    bin.install "ghost-cli"
  end

  test do
    assert_match "ghost-cli version", shell_output("#{bin}/ghost-cli version")
  end
end
