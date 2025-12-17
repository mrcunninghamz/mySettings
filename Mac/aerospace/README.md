# AeroSpace Configuration

**Tool:** [AeroSpace](https://github.com/nikitabobko/AeroSpace) - A tiling window manager for macOS

## Files

- `.aerospace.toml` - Main configuration file for AeroSpace window manager
- `.config/aerospace/new_ghostty.sh` - Helper script for spawning new Ghostty terminal windows

## Features

- Tiling window management for macOS
- Keyboard-driven window control
- Multi-monitor support
- Customizable gaps and layouts

## Installation

1. Install AeroSpace:
   ```bash
   brew install --cask aerospace
   ```

2. Deploy configuration:
   ```bash
   cd ~/mySettings/Mac
   stow aerospace
   ```

3. Restart AeroSpace or run:
   ```bash
   aerospace reload-config
   ```

## Configuration Highlights

- **Start at login:** Enabled
- **Default layout:** Tiles
- **Orientation:** Auto (based on monitor aspect ratio)
- **Keyboard layout:** QWERTY
- **Mouse follows focus:** Enabled

## Dependencies

- AeroSpace (installed via Homebrew Cask)
- Ghostty terminal (for new_ghostty.sh script)
