cask "paperd" do
  version "0.1.0"
  sha256 "df308ffaaf82d71f4c5038a7506737389abb7a918f637e3181e79e85e286b3d5"

  url "https://github.com/paperd-app/paperd/releases/download/v#{version}/paperd-#{version}.zip"
  name "paperd"
  desc "Paper manager with local AI semantic search and MCP integration for Claude"
  homepage "https://github.com/paperd-app/paperd"

  # Pythonワーカーの実行に必要（→ docs/01 3.3節）
  depends_on formula: "uv"
  depends_on macos: ">= :sonoma"

  app "Paperd.app"

  zap trash: [
    "~/Library/Application Support/paperd",
    "~/Library/Preferences/jp.paperd.app.plist",
  ]
end
