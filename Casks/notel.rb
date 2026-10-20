cask "notel" do
  version "1.3.2"
  sha256 "06968eb995ec440345fc9c88f56596654b5ffc25ae6f5a0101fe702d7df79f61"

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
