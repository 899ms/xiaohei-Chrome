# Third-party notices

## chrome-power

- Source: https://github.com/zmzimpl/chrome-power-app
- License: GNU Affero General Public License v3.0 (AGPL-3.0)
- Local reference supplied by the user: `chrome-power-app-main`

The Windows background-input portion of `native-input-mirror.cs` adapts the
open-source project's documented/native approach: identify the master Chrome
window, map window-relative coordinates to each controlled Chrome window, and
deliver `WM_MOUSE*` / `WM_KEY*` messages without repeatedly activating those
windows. The code has been integrated and modified for this application's C#
runtime and is distributed with corresponding source.

The complete upstream license text is included as `LICENSE.chrome-power.txt`.

## Electron

- Version: 43.1.1
- Source: https://github.com/electron/electron
- License: MIT

The Windows portable release contains the official Electron runtime and its bundled Chromium engine. Electron's license is included as `runtime/LICENSE`; Chromium and bundled component notices are included as `runtime/LICENSES.chromium.html`.

## rcedit

- Version: 5.0.2
- Source: https://github.com/electron/node-rcedit
- License: MIT
- Usage: build-time only

`rcedit` is used only while building the Windows portable package to set the project icon and version metadata. It is not loaded by the application at runtime.