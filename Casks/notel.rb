cask "notel" do
  version "1.2.0"
  sha256 "8ed72007260f2985b7a6fbed2f2205ef820a312f6fc5fe6d45978f959d8e7e7e"

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
