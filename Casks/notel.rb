cask "notel" do
  version "1.3.4"
  sha256 "5221c3ab914b6aa1f1b748a602d64c8a0c9397af12349605f82d54acf0ca41be"

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
