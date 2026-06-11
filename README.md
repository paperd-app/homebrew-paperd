# homebrew-paperd

[paperd](https://github.com/paperd-app/paperd)（ローカルAI検索 + Claude連携の文献管理アプリ）のHomebrew tapです。

```sh
brew install --cask paperd-app/paperd/paperd
```

uv（Pythonワーカーの実行環境）も依存として自動インストールされます。

> 注: cask定義は paperd 本体の `scripts/release.sh` がリリースごとに自動生成したものです。
> 初回の公式リリース（notarized版）公開までインストールは機能しません。
