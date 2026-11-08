class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.3/aeolus-trierarch-darwin-arm64"
      sha256 "0b8f117ed21931cd07d929b44106dfa3b828ad8d208a4a4876c7868992feb562"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.3/aeolus-trierarch-darwin-amd64"
      sha256 "0bd63ed67e9968e9a9aa39de9b2ff3ba4d43f2a61fc8328d0a9808c16dd65b42"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.3/aeolus-trierarch-linux-arm64"
      sha256 "0d8d8a2a21646ec13b7120f1e520f69969685c8f2cb7b7b89ae2a8e65cac7bb0"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.3/aeolus-trierarch-linux-amd64"
      sha256 "3fa12f43e03f2d074a3c62345edcb0342ffc8aef3c83b42d55312a0321117a25"
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
