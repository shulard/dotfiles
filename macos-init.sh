# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Install brew mandatory packages
brew install zsh git php ansible composer jq lastpass-cli weechat

# Install brew Caskroom applications
brew cask
brew cask install keybase vlc java sequel-pro visual-studio-code blockblock oversight imageoptim kitematic transmission vagrant docker gpg-suite transmit resilio-sync steam keka

# Install specific fonts
brew tap homebrew/cask-fonts
brew cask install font-source-code-pro
