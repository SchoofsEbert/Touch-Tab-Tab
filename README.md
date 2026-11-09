# Touch-Tab-Tab

> [!WARNING]
> **Touch-Tab-Tab is no longer maintained.** Switching tabs with a three-finger swipe is now part of [MissionStrike](https://github.com/SchoofsEbert/MissionStrike), from version 2.11.0.

Touch-Tab-Tab switched browser tabs with a three-finger swipe on macOS. MissionStrike does the same, and more:

- Swipe further to skip more tabs, or swipe back to return, in one gesture.
- Choose the apps it works in, and turn the haptic tick for each tab on or off.
- It warns when one of macOS's own three-finger gestures would react to the same swipe.
- It's signed with a stable certificate, so macOS keeps its Accessibility access after updates. Touch-Tab-Tab was ad-hoc signed and could stop working silently after a macOS update until it was removed from Accessibility and added again.

## Moving to MissionStrike

1. Quit Touch-Tab-Tab, delete it from `Applications`, and remove it from `System Settings > Privacy & Security > Accessibility` and from your login items.
2. Install MissionStrike:

   ```bash
   brew install --cask schoofsebert/tap/missionstrike
   ```

   See [its README](https://github.com/SchoofsEbert/MissionStrike#install) for other ways to install.
3. Open MissionStrike, follow the setup to grant Accessibility access, and turn on `Settings > Trackpad > Swipe Between Tabs`.

## Credits

Touch-Tab-Tab was a fork of [Touch-Tab](https://github.com/ris58h/Touch-Tab) by [Ilya Rodionov](https://github.com/ris58h), which switches apps with a three-finger swipe. Want to support Ilya? [Buy him a coffee](https://www.buymeacoffee.com/ris58h).
