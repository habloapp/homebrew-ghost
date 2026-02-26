class GhostConnector < Formula
  desc "Ghost Networks Connector — always-on WireGuard tunnel agent for any device"
  homepage "https://gh-o.net"
  version "0.37.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/macos-arm64/ghost-connector.tar.gz"
    sha256 "1eecc5b30a4b7fc368ef914471314a6fa4405c93e02733f429846dd9db820f9d"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-x64/ghost-connector.tar.gz"
      sha256 "2712cb6f140c3eb695d7773582a5301134bffb608fae88c3e5c3503fd9ed6935"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-arm64/ghost-connector.tar.gz"
      sha256 "034fc11dfedf8e3ab28795bb2e37d4a5e5bd1517bdad0c2271617c6aad733d41"
    end
  end

  def install
    bin.install "ghost_connector"
  end

  test do
    assert_match "ghost_connector", shell_output("#{bin}/ghost_connector version", 1)
  end
end
