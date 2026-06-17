cask "paperd" do
  version "0.2.1"
  sha256 "077b69c12544f1e7e6d0eecaf43d7bc22b81295c08eaa54f4f1e0f5c89ae10fb"

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
