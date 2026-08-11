cask "keep3" do
  version "1.0.2"
  sha256 "c84868041cbad4b3e3f8c63ca91710b8b53a9498a111adadfa5ce949ac026749"

  url "https://github.com/taobaorun/keep3/releases/download/v#{version}/Keep3-#{version}.dmg"
  name "Keep3"
  desc "Keep three priorities visible in the MacBook notch"
  homepage "https://github.com/taobaorun/keep3"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Keep3.app"

  caveats <<~EOS
    Keep3 当前版本未经过 Apple 公证。首次打开时：

    1. 打开 Finder > 应用程序
    2. 按住 Control 点击 Keep3，选择“打开”
    3. 如果仍被拦截：系统设置 > 隐私与安全性 > 仍要打开

    Keep3 保留 macOS quarantine，不会绕过 Gatekeeper。
    完整说明：https://taobaorun.github.io/keep3/#first-launch-guide
  EOS
end
