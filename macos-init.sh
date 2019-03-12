# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew mandatory packages
brew install zsh
brew install git
brew install php
brew install ansible
brew install composer
brew install jq
brew install lastpass-cli
brew install weechat
brew install gnupg
brew install vim
brew install grep
brew install openssh
brew install screen
brew install php
brew install gmp

# Install brew Caskroom applications
brew cask
brew cask install iterm2
brew cask install docker
brew cask install keybase
brew cask install vlc
brew cask install java
brew cask install sequel-pro
brew cask install visual-studio-code
brew cask install blockblock
brew cask install oversight
brew cask install imageoptim
brew cask install kitematic
brew cask install transmission
brew cask install vagrant
brew cask install docker
brew cask install gpg-suite
brew cask install transmit
brew cask install resilio-sync
brew cask install steam
brew cask install keka

# Install specific fonts
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro


## Mac OS specific configuration

# Enable "Tap to click" with the Magic Mouse / Magic Trackpad
defaults write com.apple.AppleMultitouchTrackpad Clicking -bool true
sudo defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
sudo defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
sudo defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
