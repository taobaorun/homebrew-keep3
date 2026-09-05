cask "keep3" do
  version "1.0.5"
  sha256 "6ed1d487f0979f1413cc9c028ac64eb1561324904a99f7c78879eb51e4a439bb"

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
