class GhostCli < Formula
  desc "CLI for Ghost Networks — manage networks, devices, and WireGuard tunnels"
  homepage "https://gh-o.net"
  version "0.28.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/macos/ghost-cli.tar.gz"
    sha256 "36aff5f278fd9401f0af0b1d542207896e751a5bbf9274cbf0d6dde88d4931c3"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-x64/ghost-cli.tar.gz"
      sha256 "8cbdc49359dec96264db17998fe88fe966fe284b1729e87b8dfd50f1c8976d56"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-arm64/ghost-cli.tar.gz"
      sha256 "afa80ff621e6f09292a4379775ef2e240f1d1ffbe93a710cba449fe0015f2678"
    end
  end

  def install
    bin.install "ghost-cli"
  end

  test do
    assert_match "ghost-cli version", shell_output("#{bin}/ghost-cli version")
  end
end
