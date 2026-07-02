cask "pronto" do
  version "0.6.0"
  sha256 "76b79ccf34f3af3ec57d6ba15a6c167a6a904744f5cf7ab806d733a73decd8a6"

  url "https://github.com/pacificsky/pronto/releases/download/v#{version}/Pronto-v#{version}.zip"
  name "Pronto"
  desc "Menu-bar app to turn a La Marzocco espresso machine on and off"
  homepage "https://github.com/pacificsky/pronto"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Pronto.app"

  uninstall quit: "blog.pacificsky.pronto"

  zap trash: "~/Library/Preferences/blog.pacificsky.pronto.plist"

  caveats <<~EOS
    Your La Marzocco credentials are stored in the macOS Keychain (service
    "blog.pacificsky.pronto") and are not removed on uninstall; delete them
    with Keychain Access if you want them gone.

    Pronto is unofficial and not affiliated with or endorsed by La Marzocco S.r.l.
  EOS
end
