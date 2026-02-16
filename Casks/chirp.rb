cask "chirp" do
  version "0.3.10"
  sha256 "5817c75810f8e20773a59c78633ca7e93af0c95d4fb64cb1ef7c842360e7ad09"

  url "https://github.com/stefanpenner/chirp/releases/download/v#{version}/Chirp-v#{version}-macOS.dmg"
  name "Chirp"
  desc "Offline voice-to-text for macOS — hold fn, speak, release"
  homepage "https://github.com/stefanpenner/chirp"

  depends_on macos: ">= :sequoia"

  app "Chirp.app"

  caveats <<~EOS
    Chirp requires the following permissions:
    - Microphone: Grant when prompted on first launch
    - Accessibility: Enable in System Settings → Privacy & Security → Accessibility

    The speech recognition model (~460 MB) downloads automatically on first launch.
  EOS
end
