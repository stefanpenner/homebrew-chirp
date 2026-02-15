cask "chirp" do
  version "0.2.3"
  sha256 "5c12d3f097eb0f1de6db13bab30bea0776a40ab7ad5b09ffed8a34dd00115ebe"

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
