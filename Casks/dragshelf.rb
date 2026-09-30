cask "dragshelf" do
  version "0.1.5"
  sha256 "882ba676cb08211c6d79b74d3d8bd2a4ced4b0fa60a3b07f4a5d02ea965934ba"

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
