cask "paperd" do
  version "0.2.2"
  sha256 "da7ea33ce3edc3e1979d54a3b0521e43a22b28f680dfb30bb5b2149c3500000b"

  url "https://github.com/paperd-app/paperd/releases/download/v#{version}/paperd-#{version}.zip"
  name "paperd"
  desc "Paper manager with local AI semantic search and MCP integration for Claude"
  homepage "https://github.com/paperd-app/paperd"

  # Python 3.11+ がワーカー実行に必要だが、ユーザの管理経路（brew/pyenv/asdf等）を
  # 尊重するため depends_on は宣言しない。未検出時は設定画面でガイドする（→ docs/01 3.3節）
  depends_on macos: :sonoma

  app "Paperd.app"

  zap trash: [
    "~/Library/Application Support/paperd",
    "~/Library/Preferences/jp.paperd.app.plist",
  ]
end
