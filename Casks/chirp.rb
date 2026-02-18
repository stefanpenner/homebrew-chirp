cask "chirp" do
  version "0.3.17"
  sha256 "8206c0b4fa859db0041b628a7b0ed900e988aeb02cbfe6a5552e0da5973c652d"

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
