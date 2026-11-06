class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.37.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.1/aeolus-trierarch-darwin-arm64"
      sha256 "4f89df43ae921e7a18d32e85ca20f0a5e8d1fefb6297d46b91fc50f640c82bfd"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.1/aeolus-trierarch-darwin-amd64"
      sha256 "4aae8cb338e56e23a25d6ef16f9cf630a3b1e3367ec753feb142684b6d8cae36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.1/aeolus-trierarch-linux-arm64"
      sha256 "0f34953fed3f397b3ac5d3b42b2d59c2dd4e7a5791f084e88f173bb2fb42baec"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.1/aeolus-trierarch-linux-amd64"
      sha256 "b7fe5438e7143116704e004675ff6571956dc4b97283685ec0a3edf471dfd4f7"
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
