cask "paperd" do
  version "0.2.3"
  sha256 "33f12d6fe78f6a800a9184a7abfeb45a51dc72aba9d8ce6cb0474a7183deadc2"

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
