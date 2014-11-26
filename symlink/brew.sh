# Install command-line tools using Homebrew
# Usage: `./brew.sh`

# Make sure we’re using the latest Homebrew
brew update
brew upgrade

brew tap homebrew/dupes
brew tap homebrew/apache

brew install coreutils
brew install findutils --default-names
brew install gnu-sed --default-names
brew install bash
brew install bash-completion
brew install vim --override-system-vi
brew install wget --enable-iri
brew install homebrew/dupes/grep
brew install --universal pcre
brew install ack
brew install autoconf
brew install autojump
brew install automake
brew install git
brew install go
brew install htop
brew install htop-osx
brew install nginx
brew install ngrep
brew install nmap
brew install node
brew install openssl
brew install pkg-config
brew install postgresql
brew install pstree
brew install python
brew install mercurial
brew install python3
brew install readline
brew install rename
brew install ssh-copy-id
brew install tmux
brew install tree
brew install wget
brew install zopfli

# casks
brew install caskroom/cask/brew-cask
brew tap caskroom/versions

brew cask install alfred 2> /dev/null
brew cask install atom 2> /dev/null
brew cask install firefox 2> /dev/null
brew cask install flux 2> /dev/null
brew cask install google-chrome 2> /dev/null
brew cask install google-drive 2> /dev/null
brew cask install google-hangouts 2> /dev/null
brew cask install hipchat 2> /dev/null
brew cask install istat-menus 2> /dev/null
brew cask install iterm2 2> /dev/null
brew cask install java 2> /dev/null
brew cask install lastpass-universal 2> /dev/null
brew cask install limechat 2> /dev/null
brew cask install skype 2> /dev/null
brew cask install spectacle 2> /dev/null
brew cask install steam 2> /dev/null
brew cask install sublime-text3 2> /dev/null
brew cask install the-unarchiver 2> /dev/null
brew cask install usb-overdrive 2> /dev/null
brew cask install vagrant 2> /dev/null
brew cask install virtualbox 2> /dev/null
brew cask install vlc 2> /dev/null

brew cleanup
