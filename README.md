# 小黑多开器

> [!IMPORTANT]
> 本项目是开源项目，代码主要由 ChatGPT 在用户指导下生成和维护。应用自身的环境配置与用户数据默认保存在运行设备本地，本项目不运营用于接收这些数据的服务器；访问网站、代理检测、扩展下载等功能仍会按用户操作与相应第三方网络服务通信。运行前请自行审查源码，并使用可信杀毒软件、沙箱或其他安全工具检测；AI 审核只能作为辅助，不能替代专业安全审计。软件按“现状”提供，在适用法律允许的最大范围内，作者不对使用、修改或分发本项目造成的损失承担责任。详见 [免责声明](DISCLAIMER.md)。

本仓库保存“小黑多开器”的可审查源代码。当前版本为 V14.0.0，重点是本地 Chrome Profile 隔离、多环境管理、代理出口检查、扩展管理、窗口同步和环境一致性诊断。

## 源码位置

`xiaoheiChrome/local-functional-v2-app`

## V14 安全边界

- 每个环境使用独立 Chrome 用户目录，隔离 Cookie、缓存、LocalStorage 和 IndexedDB。
- 支持标准浏览器隐私设置、代理/IP 检查和兼容性测试。
- 不承诺规避网站风控、反机器人系统或账号关联检测。
- 不上传浏览器 Profile、Cookie、代理凭据、日志、第三方 EXE 或 CloakBrowser 二进制。

## 验证

使用 Node.js 运行：

```powershell
node xiaoheiChrome/local-functional-v2-app/v14-selftest.js
```

## 下载后运行

- 普通用户请从 GitHub Releases 下载 `小黑多开器-V14-Windows便携版.zip`，完整解压后双击 `START.cmd`。
- 便携版已经包含官方 Electron 43.1.1 与对应 Chromium 运行环境，但浏览器环境功能仍需要电脑已安装 Google Chrome。
- 便携 ZIP 大于 GitHub 仓库单文件 100 MB 限制，因此只能作为 Release 附件发布，不能直接提交到源码仓库。

## 从源码构建 Windows 便携版

要求：Windows 10/11 x64、Node.js、npm、.NET Framework 4 C# 编译器，以及 Google Chrome。

```powershell
cd xiaoheiChrome/local-functional-v2-app
npm ci
npm run selftest
npm run package:portable
```

构建脚本会从官方 npm/GitHub 下载锁定的 Electron 43.1.1，重新编译 7 个 `native-*.cs` 辅助程序，并生成：

`xiaoheiChrome/local-functional-v2-app/dist/小黑多开器-V14-Windows便携版.zip`

源码仓库通过 `.gitignore` 排除 Electron/Chromium 二进制、编译后的 EXE、浏览器 Profile、Cookies、代理凭据、日志和缓存。
第三方组件的许可证和分发条件应由使用者单独遵守。
