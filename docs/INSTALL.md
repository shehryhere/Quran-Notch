# Install Quran Notch

Quran Notch v1.0.0 requires **macOS 13.0 or later**, according to the supplied app bundle's `Info.plist`.

> The downloadable DMG is still being prepared. Do not follow a release download link until the asset appears on [Releases](https://github.com/shehryhere/Quran-Notch/releases).

## Install from the official DMG

1. Download `Quran-Notch-v1.0.0.dmg` from the official GitHub release.
2. Open the downloaded DMG.
3. Drag `Quran Notch.app` to your Applications folder.
4. Eject the mounted DMG.
5. Launch Quran Notch from Applications; the app appears in the menu bar.

## Important: Allow Quran Notch to open on macOS

Because macOS may be unable to verify the app's developer or notarization, **Quran Notch may be blocked on its first launch**.

If you see an alert such as **“Apple cannot check it for malicious software”** or **“developer cannot be verified”**, follow these steps **only if you obtained the app from the official Quran Notch release and trust the download**:

1. In **Applications**, double-click **Quran Notch.app** to attempt its first launch.
2. If a macOS security alert blocks the app, dismiss the alert using the available button (such as **Done**).
3. Open **Apple menu () → System Settings**.
4. Select **Privacy & Security** in the sidebar.
5. Scroll down to the **Security** section. Look for the message that Quran Notch was blocked.
6. Click **Open Anyway** (the exact wording may vary across macOS versions).
7. When the confirmation dialog appears, choose **Open** and enter your Mac login password or use Touch ID if requested.
8. Quran Notch should open. Future launches normally work from Applications without repeating this exception.

**Can't find “Open Anyway”?** You must first try launching the app so macOS can show the specific exception. The button may only be available for about an hour after that launch attempt. Try opening the app again and return to **Privacy & Security**.

**Security:** Bypassing this check for an unknown or tampered-with download can expose your Mac to malware. Never disable Gatekeeper globally. If macOS says the app **will damage your computer**, or that the app is **damaged**, do not bypass that alert; instead report the problem.

Official reference: [Apple Support — Safely open apps on your Mac](https://support.apple.com/en-us/102445).

## Daily verse

The UI states the next ayah appears at local midnight. The actual midnight transition still requires verification on the publicly distributed build.

## Troubleshooting

- Confirm that you're running macOS 13 or newer.
- Check the menu bar for Quran Notch, including hidden menu bar items.
- Quit and relaunch the app if its interface does not appear.
- When reporting a problem, include your macOS version, app version and reproduction steps.
