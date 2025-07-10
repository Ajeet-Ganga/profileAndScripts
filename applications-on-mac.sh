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
brew install --cask spotify
brew install --cask google-chrome

brew install --cask clipy
brew install --cask rectangle
brew install --cask hiddenbar
brew install --cask itsycal

brew install --cask daisydisk
brew install --cask todoist
brew install --cask notion
brew install --cask obsidian             # A Markdown-based knowledge-base that lets you interlink notes, build a personal wiki, and visualize your ideas.

brew install bat
