class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.37.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.2/aeolus-trierarch-darwin-arm64"
      sha256 "7840f2ca7c47803edfd51f524f8e25597529b51e075c7d2ec40b0812f1eb9b1d"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.2/aeolus-trierarch-darwin-amd64"
      sha256 "a77ab67c37638ecc60aaa873f0b4b2ff1337b2fd0c67a7d50e4503e557103c3a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.2/aeolus-trierarch-linux-arm64"
      sha256 "d0ab0fc75ae1089a74dd2ed4ba8d2b16d48d430f6c9dfa1eb5536ab0b49b8220"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.2/aeolus-trierarch-linux-amd64"
      sha256 "c5837f9791582262f859b05d3113196b5061e5d52daab3876ff2bbc1558c54dc"
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
