# Install Xcode Command Line Tools (if not already installed)
xcode-select --install 2>/dev/null

# Install Homebrew (if not installed)
if ! command -v brew &>/dev/null; then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Add Homebrew to PATH for zsh (Apple Silicon default)
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# Update and check brew
brew doctor      # should say “Your system is ready to brew.”
brew update      # pulls the latest formula metadata

# ***
# selected applications to be installed
# ***
brew install --cask spotify           # Music streaming app with curated playlists and offline support
brew install --cask google-chrome     # Popular web browser by Google with fast performance and syncing

brew install --cask clipy             # Clipboard manager to access recent copied text or images
brew install --cask rectangle         # Window manager to snap windows using keyboard shortcuts
brew install --cask hiddenbar         # Utility to hide and organize menu bar items
brew install --cask itsycal           # Lightweight calendar in the Mac menu bar

brew install --cask daisydisk         # Disk space analyzer with interactive visual breakdown
brew install --cask todoist           # Task manager with project organization and reminders
brew install --cask notion            # All-in-one workspace for notes, databases, and collaboration
brew install --cask obsidian          # Markdown-based personal knowledge management and note linking

# Developer tools
brew install bat                      # A better `cat` with syntax highlighting and Git integration
brew install awscli
