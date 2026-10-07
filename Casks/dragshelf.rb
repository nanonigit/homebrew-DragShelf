cask "dragshelf" do
  version "0.2.0"
  sha256 "d71322453ad0603f22d751be70ceb2eebeec02b7dba1feb4d404e61713a23e93"

  url "https://github.com/nanonigit/DragShelf/releases/download/v#{version}/DragShelf-#{version}-macos-arm64.zip"
  name "DragShelf"
  desc "Temporary drag-and-drop shelf for macOS"
  homepage "https://github.com/nanonigit/DragShelf"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "DragShelf.app"

  caveats <<~EOS
    DragShelf is an experimental ad-hoc-signed app. It is not Developer ID signed
    or notarized, so macOS Gatekeeper may block its first launch. Review the
    source and release before allowing it in System Settings > Privacy & Security.
    Input Monitoring permission may need to be granted again after an update.
    The AppKit drag-detection fallback can work without Input Monitoring.
    If you enabled launch at login, turn it off in DragShelf before uninstalling.
  EOS
end
