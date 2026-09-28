# DragShelf Homebrew tap

Install the experimental Apple Silicon macOS app:

```sh
brew tap nanonigit/tap
brew install --cask dragshelf
```

DragShelf is ad-hoc signed, not Developer ID signed or notarized. macOS may block its first launch. Review the [source and release notes](https://github.com/nanonigit/DragShelf) before allowing it in System Settings → Privacy & Security. Homebrew does not bypass Gatekeeper or grant Input Monitoring access.

## 日本語

Apple Silicon Mac 用の実験版をインストールします。

```sh
brew tap nanonigit/tap
brew install --cask dragshelf
```

DragShelf はアドホック署名のみで、Developer ID 署名・公証はありません。初回起動時に macOS がブロックする場合があります。[ソースとリリース情報](https://github.com/nanonigit/DragShelf)を確認したうえで、「システム設定 → プライバシーとセキュリティ」から許可してください。Homebrew は Gatekeeper を回避せず、入力監視の権限も付与しません。
