cask "dragshelf" do
  version "0.1.0"
  sha256 "8fa20f0c23a14e0688f681cd19b38f43c210077fdbe0b338390a5bb1836a34de"

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
  EOS
end
