cask "paperd" do
  version "0.2.0"
  sha256 "afbd623caffaeb6c0379f7f12bc632e70aca21f6e713c7e5d04d55b6c4775ca4"

  url "https://github.com/paperd-app/paperd/releases/download/v#{version}/paperd-#{version}.zip"
  name "paperd"
  desc "Paper manager with local AI semantic search and MCP integration for Claude"
  homepage "https://github.com/paperd-app/paperd"

  # Pythonワーカーの実行に必要（→ docs/01 3.3節）
  depends_on formula: "uv"
  depends_on macos: :sonoma

  app "Paperd.app"

  zap trash: [
    "~/Library/Application Support/paperd",
    "~/Library/Preferences/jp.paperd.app.plist",
  ]
end
