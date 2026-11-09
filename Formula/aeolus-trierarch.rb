class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.10"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.10/aeolus-trierarch-darwin-arm64"
      sha256 "adbcd14b0502cff81be16af1fb78deb378be7ffb9bf66987183cf16323fae274"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.10/aeolus-trierarch-darwin-amd64"
      sha256 "c278da6ba72d225171f26a421486c6748427be8d052ee9977f584598bac460ee"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.10/aeolus-trierarch-linux-arm64"
      sha256 "df3dc2a473addf9f1a008e46b13a5d816f34419ea59e19dadeb2128d29c71e28"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.10/aeolus-trierarch-linux-amd64"
      sha256 "4cedfa7998eab021e6e81f5e18b2d8d1328c4b1303599c38a956bea09eb9978e"
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
