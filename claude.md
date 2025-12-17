# Claude Workflow for Configuration Management

This document outlines the workflow for Claude to help gather, organize, and manage system configurations.

## Initial Configuration Gathering Workflow

When starting a new configuration setup, Claude should:

### 1. Identify Operating System
Ask the user:
- Which operating system are you using? (Mac/Windows/Linux)
- What version/distribution?

### 2. Gather Terminal Environment Information
Ask about:
- **Terminal Emulator**: Which terminal emulator do you use?
  - Examples: iTerm2, Terminal.app, Alacritty, Kitty, Windows Terminal, Konsole, GNOME Terminal
- **Shell**: What shell do you use?
  - Examples: bash, zsh, fish, powershell
- **Window Manager** (if applicable): Do you use a tiling window manager?
  - Examples: yabai, Amethyst (Mac), i3, sway (Linux), FancyZones (Windows)

### 3. Gather Tool and Utility Information
Ask about:
- **Version Control**: Git configuration
- **Text Editors/IDEs**: VS Code, Vim, Neovim, Emacs, etc.
- **Package Managers**: Homebrew, apt, yum, chocolatey, winget, etc.
- **Development Tools**: Node.js, Python, Docker, etc.
- **Command Line Utilities**: 
  - File managers (ranger, lf, nnn)
  - Multiplexers (tmux, screen)
  - Prompt themes (Starship, Oh My Zsh, Powerlevel10k)
  - Other tools (fzf, ripgrep, bat, etc.)

### 4. Locate Configuration Files
For each tool identified, help locate and copy configuration files:
- Shell configs: `.bashrc`, `.zshrc`, `.config/fish/config.fish`
- Terminal configs: Often in `~/.config/` or application preferences
- Editor configs: `.vimrc`, `~/.config/nvim/`, VS Code `settings.json`
- Git config: `.gitconfig`
- Tool-specific configs in `~/.config/` or `~/.<tool>rc`

### 5. Document Each Configuration
For each configuration file added, create or update documentation:
- What tool/application it configures
- Key features or customizations
- Dependencies or plugins required
- Installation steps
- Any special setup instructions

### 6. Organize in Repository
- Place configs in appropriate OS folder (Mac/Windows/Linux)
- Create subdirectories by category if needed (shell/, terminal/, editors/, etc.)
- Maintain a README in each OS folder listing all configurations

## Ongoing Configuration Management

When the user requests changes:

### For New Configurations
1. Ask which tool/application needs configuration
2. Determine where the config should live (which OS folder)
3. Get or create the configuration
4. Document it properly
5. Commit with descriptive message

### For Configuration Updates
1. Identify which configuration to update
2. Make the requested changes
3. Update documentation if the change affects usage
4. Commit with message describing the change

### For Configuration Queries
When asked about existing configurations:
1. Check the appropriate OS folder
2. Reference documented configurations
3. Explain current settings
4. Suggest improvements if applicable

## Configuration File Naming Convention

- Keep original filenames when possible (`.zshrc`, `.vimrc`, etc.)
- Use descriptive names for custom scripts
- Include version or date for system-specific exports if needed
- Use README files to explain non-obvious filenames

## Best Practices

- Always test configurations before committing
- Document non-standard settings
- Note version-specific configurations
- Keep sensitive information (tokens, passwords) out of configs
- Use environment variables for machine-specific values
- Create installation/setup scripts when configurations are complex
