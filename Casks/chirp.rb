cask "chirp" do
  version "0.3.6"
  sha256 "1d34dc426d1e6d2aead697598d1da4af140334494e452b5b8d3149ae165ac4fb"

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

    The speech recognition model (~240 MB) downloads automatically on first launch.
  EOS
end
