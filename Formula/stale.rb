class Stale < Formula
  desc "CLI tool to run or skip commands based on file content hashes"
  homepage "https://github.com/Survesy/stale"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.5/stale-x86_64-apple-darwin.tar.gz"
      sha256 "882670da38c71b603a7e7ad91f8bd6a5979ff49227c8a72ebe88ff67586c6b7c"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.5/stale-aarch64-apple-darwin.tar.gz"
      sha256 "1cc0bc003214138d2b2b7e7033c312ccaa002d51f4ba61d505401be105a612e0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.5/stale-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e8cd02aab1298346dcdf017e209d19c3be2d0c91e325fd820be65ec32c2a865a"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.5/stale-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "322e5bd198b5a361cea2852da6a6a51b9bc9bc3d1f0a266e2fd29b9e11800aef"
    end
  end

  def install
    bin.install "stale"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stale --version")
  end
end
