class GhostConnector < Formula
  desc "Ghost Networks Connector — always-on WireGuard tunnel agent for any device"
  homepage "https://gh-o.net"
  version "0.36.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/macos-arm64/ghost-connector.tar.gz"
    sha256 "4f8f9480a8a36b7e172b079441382a2fe4947b86b0c663ab5e672b6fb3b57578"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-x64/ghost-connector.tar.gz"
      sha256 "a48d077daa341ed4fc6ac9d5587ccad8676ac37509ebd60168b218c1446161d4"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-arm64/ghost-connector.tar.gz"
      sha256 "309f11fbaef6b57d4702693516ce2ad82279dcb10136e23cd62caebd9e913e25"
    end
  end

  def install
    bin.install "ghost_connector"
  end

  test do
    assert_match "ghost_connector", shell_output("#{bin}/ghost_connector version", 1)
  end
end
