class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.5/aeolus-trierarch-darwin-arm64"
      sha256 "c91530becd7171eba50526d1a4c44536cabc5309c1e1f3f49f8daa22ae651712"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.5/aeolus-trierarch-darwin-amd64"
      sha256 "bdfd5bd16c01f23b476a7518e54abc343e99b50248c88f5d6de50dd285b044f9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.5/aeolus-trierarch-linux-arm64"
      sha256 "38467efdf9a6ab608d6d29e093dd324ccf30f794c88f252373e10b811d9c3820"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.5/aeolus-trierarch-linux-amd64"
      sha256 "3a7637f11cae8749c2460f3de9cd3e56bdf7249ffdc5aa5f5c30f0df103f3e09"
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
