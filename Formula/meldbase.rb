class Meldbase < Formula
  desc "Embedded document database with realtime query support"
  homepage "https://github.com/crapthings/meldbase"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/crapthings/meldbase/releases/download/v0.1.0-alpha.14/meldbase_0.1.0-alpha.14_darwin_arm64.tar.gz"
      sha256 "86c3b4d89dd5aebbcc3b88825967959ba6a43bdce1985091828b20b79ee37fec"
    end

    on_intel do
      url "https://github.com/crapthings/meldbase/releases/download/v0.1.0-alpha.14/meldbase_0.1.0-alpha.14_darwin_amd64.tar.gz"
      sha256 "3b1dcd96d7c66e1c9f032ba2992ae00d04e4c8da625c3f9ff9104ccedc7c9ce8"
    end
  end

  def install
    bin.install "meld"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/meld version")
  end
end
