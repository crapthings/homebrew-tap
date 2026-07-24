class Meldbase < Formula
  desc "Embedded document database with realtime query support"
  homepage "https://github.com/crapthings/meldbase"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/crapthings/meldbase/releases/download/v0.1.0-alpha.13/meldbase_0.1.0-alpha.13_darwin_arm64.tar.gz"
      sha256 "9bb21ece263b00c0d5bf5ddf547b2b299d02ba1348f607cad7f231367bfd052b"
    end

    on_intel do
      url "https://github.com/crapthings/meldbase/releases/download/v0.1.0-alpha.13/meldbase_0.1.0-alpha.13_darwin_amd64.tar.gz"
      sha256 "1a0dda15636d61e68f143baa81b94818a7f096b843d0f54a9e037e3aed7dab50"
    end
  end

  def install
    bin.install "meld"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meld version")
  end
end
