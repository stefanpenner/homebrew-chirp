cask "chirp" do
  version "0.3.20"
  sha256 "0efabc4f82233e329c77113023017e15bb203b2c7f8db00b6b9fe16105c9ed09"

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
