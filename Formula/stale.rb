class Stale < Formula
  desc "CLI tool to run or skip commands based on file content hashes"
  homepage "https://github.com/Survesy/stale"
  version "0.2.3"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.3/stale-x86_64-apple-darwin.tar.gz"
      sha256 "7d1c8196a92e913374a7b65e34a5597a0b3736bb0ad9ff0f2b70fb09b7b89843"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.3/stale-aarch64-apple-darwin.tar.gz"
      sha256 "31940279a40dbb640a2bd309bc07ed050c886a1db2c29fc884c1fd4a8b25cef8"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.3/stale-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "8cfbd79527816d2a6d0435f0f15889c462672fb143fc4de31aaa6679a05d4292"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.3/stale-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46bc444d42cd5a0c4b8ab5476dcb6517d1bec1f4f14d415fd4389671e31224f1"
    end
  end

  def install
    bin.install "stale"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stale --version")
  end
end
