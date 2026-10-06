cask "notel" do
  version "1.3.0"
  sha256 "2fab10e802db6bab0a4571b9c93b2b852ab0d87eeaacd53ab02410b1000402fa"

  url "https://github.com/macprotips/notel-updates/releases/download/v#{version}/Notel.dmg"
  name "Notel"
  desc "Floating sticky notes for the menu bar"
  homepage "https://github.com/macprotips/notel-updates"

  # Notel updates itself with Sparkle; Homebrew must not fight it.
  auto_updates true
  depends_on macos: :sequoia

  app "Notel.app"

  # Deliberately no `zap` stanza: Notel is sandboxed, so every note lives in
  # its container. `brew uninstall --zap` must never be able to delete notes.
end
