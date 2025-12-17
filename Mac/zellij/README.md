# Zellij Configuration

**Tool:** [Zellij](https://zellij.dev/) - Terminal workspace manager

## Files

- `.config/zellij/config.kdl` - Main Zellij configuration with custom keybindings

## Features

- Custom keybindings (clears defaults)
- Vim-style navigation (hjkl)
- Pane management (split, float, focus)
- Tab management with numbered shortcuts
- Modal keybinding system (locked, pane, tab, resize, etc.)

## Installation

1. Install Zellij:
   ```bash
   brew install zellij
   ```

2. Deploy configuration:
   ```bash
   cd ~/Projects/mySettings/Mac
   stow -t ~ zellij
   ```

3. Restart Zellij or start a new session

## Configuration Highlights

- **Clear defaults:** All default keybindings removed for custom setup
- **Mode switching:** Ctrl+g to return to normal mode
- **Vim-style:** hjkl for navigation
- **Quick tabs:** Number keys (1-9) to switch tabs
- **Pane splits:** d (down), r (right), n (new)
- **Focus:** Toggle fullscreen, floating panes, and more

## Keybinding Modes

The config defines custom keybindings for:
- `locked` - Locked mode (Ctrl+g to unlock)
- `pane` - Pane management
- `tab` - Tab management
- `resize` - Pane resizing
- `move` - Moving panes
- `scroll` - Scrollback navigation
- `session` - Session management
- `tmux` - Tmux compatibility mode

## Dependencies

- Zellij (installed via Homebrew)

## Notes

- Auto-starts in zsh (configured in `.zshrc`)
- Uses KDL (KDL Document Language) for configuration
