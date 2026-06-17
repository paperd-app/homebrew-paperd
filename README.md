# homebrew-paperd

Homebrew tap for [paperd](https://github.com/paperd-app/paperd) — a native macOS reference
manager with local-AI full-text semantic search and MCP integration for Claude.

## Install

```sh
brew install --cask paperd-app/paperd/paperd
```

paperd requires Python 3.11+ for its local worker. If Python is not installed, the app's
**Settings → Worker** screen will show the install command.

After installing, open paperd and run **Settings → Worker → Set up environment** to create
the worker virtualenv and download the local AI models (a few minutes, ~2–3 GB).

## Update / uninstall

```sh
brew upgrade --cask paperd
brew uninstall --cask paperd          # add --zap to also remove app data
```

---

The cask in `Casks/paperd.rb` is generated per release by `scripts/release.sh` in the
[main repo](https://github.com/paperd-app/paperd). Please file issues at
[paperd-app/paperd/issues](https://github.com/paperd-app/paperd/issues).
