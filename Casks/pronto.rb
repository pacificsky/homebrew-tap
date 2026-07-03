cask "pronto" do
  version "0.6.1"
  sha256 "05ff1013e360f1c9b9b4c0107eac12d62dcf88e421915db7328214bca0cef62b"

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
