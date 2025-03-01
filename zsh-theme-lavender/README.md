# Lavender Theme for Zsh

A minimal and elegant theme for Zsh, ported from the Fish shell Lavender theme.

## Features

- Username and hostname display
- Current directory name
- Virtualenv support
- Git branch display with dirty state indication
- Status code indication with color changes
- Clean, minimal aesthetic

## Installation

### Manual Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/zsh-theme-lavender.git ~/.zsh-theme-lavender
   ```

2. Add the theme to your `.zshrc`:
   ```
   source ~/.zsh-theme-lavender/lavender.zsh-theme
   ```

### Oh My Zsh Installation

1. Clone this repository into your Oh My Zsh themes directory:
   ```
   git clone https://github.com/yourusername/zsh-theme-lavender.git ~/.oh-my-zsh/custom/themes/lavender
   ```

2. Link the theme file:
   ```
   ln -s ~/.oh-my-zsh/custom/themes/lavender/lavender.zsh-theme ~/.oh-my-zsh/custom/themes/lavender.zsh-theme
   ```

3. Set the theme in your `.zshrc`:
   ```
   ZSH_THEME="lavender"
   ```

## Screenshot

(Add screenshot here)

## Requirements

- Zsh 5.0 or higher
- Git (for repository status features)

## License

MIT License