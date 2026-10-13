cask "notel" do
  version "1.3.1"
  sha256 "512a3856113cc6b7357cb41184c10913d2d3e8be83415f40639816192df747a9"

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
