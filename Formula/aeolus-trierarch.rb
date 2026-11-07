class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.1/aeolus-trierarch-darwin-arm64"
      sha256 "0dcc2e69be9cc430c38c3e760b31c2c9868503a8c25f8fb89677ae5b8a5596a0"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.1/aeolus-trierarch-darwin-amd64"
      sha256 "9aa587081b1b7288bcf6bad6006e64a1b6e75846684368cbec6f0d14e2231fed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.1/aeolus-trierarch-linux-arm64"
      sha256 "11d7754b8330ecdb899097626dc2288b6b67ebe18a60963784b99440592e0a19"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.1/aeolus-trierarch-linux-amd64"
      sha256 "7b0941e61df826d8807c2868fbe761e8bf498b8a21dfc7a8de10763d4e9ba991"
    end
  end

  def install
    binary = Dir["aeolus-trierarch-*"].first
    chmod 0555, binary
    bin.install binary => "aeolus-trierarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aeolus-trierarch --version --json")
  end
end
