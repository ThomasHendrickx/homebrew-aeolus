class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.41.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.2/aeolus-trierarch-darwin-arm64"
      sha256 "787357f559b279c356338aabf8aede748108a5ce2103e3539a74b13d5d580b1f"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.2/aeolus-trierarch-darwin-amd64"
      sha256 "304bba7f56e39c7ace243266ec5bff67d8d71b45909628a5a9a5e0648e8de4b2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.2/aeolus-trierarch-linux-arm64"
      sha256 "4e6ee24e53a3159abab54b4ebe5ebfdff35b0b33521236c6df6e43a9d8cfd1d7"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.2/aeolus-trierarch-linux-amd64"
      sha256 "0dbeb20507a9ea5e9b7dfb152e63291f58ca801d6e2fd2307df7e3c16bcfe06b"
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
