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

1. Clone this repository to your home directory (or preferred location)
2. Navigate to your OS-specific folder:
   ```bash
   cd ~/mySettings/Mac  # or Windows, or Linux
   ```
3. Deploy a specific package:
   ```bash
   stow zsh    # Creates ~/.zshrc symlink
   stow vim    # Creates ~/.vimrc symlink
   ```
4. Deploy all packages:
   ```bash
   stow */
   ```

### Removing Configurations

```bash
cd ~/mySettings/Mac
stow -D zsh    # Removes ~/.zshrc symlink
```

### Adding New Configurations

1. Navigate to your operating system folder
2. Create a package directory for the tool (e.g., `mkdir zsh`)
3. Add configuration files in the structure they should appear in home directory
4. Test with `stow -n <package>` (dry run)
5. Deploy with `stow <package>`
6. Document what each package does
7. Commit changes with descriptive messages

See [claude.md](./claude.md) for the detailed workflow.

## Configuration Tracking

When adding new configurations, document:
- Operating system and version
- Tool/application name and version
- Purpose of the configuration
- Installation/setup instructions
- Dependencies (if any)
