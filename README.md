# mySettings

A centralized repository for storing operating system configurations and environment setups across different platforms, managed with GNU Stow.

## Prerequisites

- **GNU Stow** - Required for symlink management
  - macOS: `brew install stow`
  - Linux: `sudo apt install stow` or `sudo yum install stow`
  - Windows: Use WSL or install via Chocolatey: `choco install stow`

## Purpose

This repository serves as a version-controlled backup and reference for:
- Configuration files (dotfiles)
- Environment setup scripts
- Tool-specific settings
- Terminal emulator configurations
- Window manager settings
- Shell configurations
- Utility preferences

## Structure

Configuration files are organized by operating system, with each tool/application in its own stow package:

- **Mac/** - macOS configuration packages
- **Windows/** - Windows configuration packages
- **Linux/** - Linux configuration packages

Each package directory mirrors the structure of your home directory. For example:
```
Mac/
├── zsh/
│   ├── .zshrc
│   └── .zshenv
├── vim/
│   └── .vimrc
└── tmux/
    └── .tmux.conf
```

## Status

⚠️ **Work in Progress** - These configurations are actively being developed and refined.

## Usage

### Deploying Configurations

1. Clone this repository (recommended location: `~/Projects/mySettings`)
2. Navigate to your OS-specific folder:
   ```bash
   cd ~/Projects/mySettings/Mac  # or Windows, or Linux
   ```
3. Deploy a specific package with explicit target:
   ```bash
   stow -t ~ aerospace   # Creates symlinks in home directory
   stow -t ~ zsh         # Creates ~/.zshrc symlink
   ```
4. Deploy all packages:
   ```bash
   stow -t ~ */
   ```

**Note:** The `-t ~` flag explicitly targets your home directory. Without it, stow creates symlinks in the parent directory of where you run it.

### Removing Configurations

```bash
cd ~/Projects/mySettings/Mac
stow -D -t ~ aerospace    # Removes ~/.aerospace.toml symlink
stow -D -t ~ zsh          # Removes ~/.zshrc symlink
```

### Adding New Configurations

1. Navigate to your operating system folder
2. Create a package directory for the tool (e.g., `mkdir zsh`)
3. Add configuration files in the structure they should appear in home directory
4. Test with `stow -n -t ~ <package>` (dry run)
5. Deploy with `stow -t ~ <package>`
6. Document what each package does in a README.md inside the package
7. Commit changes with descriptive messages

See [claude.md](./claude.md) for the detailed workflow.

## Configuration Tracking

When adding new configurations, document:
- Operating system and version
- Tool/application name and version
- Purpose of the configuration
- Installation/setup instructions
- Dependencies (if any)
