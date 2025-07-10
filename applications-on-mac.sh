# onetime
bash xcode-select --install

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# brew command shortcut
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> ~/.zprofile

# Brew setup
brew doctor      # should say “Your system is ready to brew.”
brew update      # pulls the latest formula metadata

# ***
# selected applications to be installed
# ***
brew install --cask spotify
brew install --cask notion
brew install --cask clipy
brew install --cask rectangle
brew install --cask chrome
