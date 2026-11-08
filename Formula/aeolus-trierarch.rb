class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.6"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.6/aeolus-trierarch-darwin-arm64"
      sha256 "db2151f0836d41d37ece66b3d9df6ff5a6b9924bfcdb2b506d34a73d19365f7b"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.6/aeolus-trierarch-darwin-amd64"
      sha256 "0f146598aa3d982b9140a6f61701a644c868a6aa945ee7ba0f33c8e5dee423a6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.6/aeolus-trierarch-linux-arm64"
      sha256 "3334710206823a711c11eb8c7c738198959312015d325cdcc3b5ec61a2eefb81"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.6/aeolus-trierarch-linux-amd64"
      sha256 "20679f45b1f4878fd3cfbf4a49474aa4b09a4ae0b4ff8c0ce74a171e96ec6e37"
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
