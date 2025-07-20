# Install Xcode Command Line Tools (if not already installed)
xcode-select --install 2>/dev/null

# Install Homebrew (if not installed)
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH for zsh (Apple Silicon default)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# Keep Homebrew itself up to date
brew doctor      # should say “Your system is ready to brew.”
brew update      # pulls the latest formula metadata
brew upgrade
# ***
# selected applications to be installed
# ***

# ---------- GUI applications (casks) ----------
casks=(
  # Music & browser
  spotify           # Music streaming app with curated playlists and offline support
  google-chrome     # Popular web browser by Google with fast performance and syncing

  # Productivity utilities
  clipy             # Clipboard manager to access recent copied text or images
  rectangle         # Window manager to snap windows using keyboard shortcuts
  hiddenbar         # Utility to hide and organize menu bar items
  itsycal           # Lightweight calendar in the Mac menu bar

  # Storage / notes / tasks
  daisydisk         # Disk space analyzer with interactive visual breakdown
  todoist           # Task manager with project organization and reminders
  notion            # All-in-one workspace for notes, databases, and collaboration
  obsidian          # Markdown-based personal knowledge management and note linking
)

echo "Installing cask applications..."
for app in "${casks[@]}"; do
  brew install --cask "$app"
done

# ---------- Command-line developer tools ----------
# bat: Better cat with syntax highlighting
# awscli: AWS command-line interface
# awscurl: SigV4-signed cURL wrapper for AWS services
# zsh-syntax-highlighting: Fish-style command highlighting for Z-shell
brew install bat awscli awscurl zsh-syntax-highlighting graphviz plantuml 

# ---------- Development runtimes & packages ----------
# JavaScript/TypeScript runtime
brew install node    

echo "✅ All requested packages have been installed."
