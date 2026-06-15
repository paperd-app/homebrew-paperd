cask "paperd" do
  version "0.1.0"
  sha256 "156a676ca61d4ef3c32c692e88a683af9323093f17a7111e535aea96b177a993"

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
