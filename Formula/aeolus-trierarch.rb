class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.37.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.0/aeolus-trierarch-darwin-arm64"
      sha256 "e33c4c0681c892d6b19877850a5a77c2fd36a2a433f7900e4baf1a6d10d6a892"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.0/aeolus-trierarch-darwin-amd64"
      sha256 "f054bfcd0ca9054083d60c3de98df81ba97a6e1cc76b29f3267eca113e98e3b6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.0/aeolus-trierarch-linux-arm64"
      sha256 "7a796470cecffbe6db707432a875928b08bb23eb8cbc19ae8a7314b224cf1d64"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.0/aeolus-trierarch-linux-amd64"
      sha256 "52a7e0d30775771e7d20a1f89a1fe047dc68fa2d62cd781cc1082108b85b7ded"
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
