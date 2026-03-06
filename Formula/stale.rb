class Stale < Formula
  desc "CLI tool to run or skip commands based on file content hashes"
  homepage "https://github.com/Survesy/stale"
  version "0.2.4"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.4/stale-x86_64-apple-darwin.tar.gz"
      sha256 "c6f88d70e1d6591517df90547259e571b2658c7cbcb4dbf721b978e21bfb7839"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.4/stale-aarch64-apple-darwin.tar.gz"
      sha256 "bff53985e2bdf13bc4eca84c993b6e214c6e68722b1c6e6488fb6b5d800116eb"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Survesy/stale/releases/download/0.2.4/stale-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "aee28ae4edec1d233a1345081a98277cfa0f439eb5b9643ba16ff23029360430"
    end
    on_arm do
      url "https://github.com/Survesy/stale/releases/download/0.2.4/stale-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "bdd8f8589baf117fac9c678950f0c1114133f6134abdcbe6a12bb6abf840be2d"
    end
  end

  def install
    bin.install "stale"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/stale --version")
  end
end
