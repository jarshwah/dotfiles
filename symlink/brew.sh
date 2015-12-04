# Install command-line tools using Homebrew
# Usage: `./brew.sh`

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` time stamp until the script has finished.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure we’re using the latest Homebrew
brew update
brew upgrade --all

brew tap homebrew/dupes
brew tap homebrew/apache

brew install --universal pcre

brew install coreutils
sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum
brew install moreutils
brew install findutils --with-default-names
brew install gnu-sed --with-default-names
brew install bash
brew tap homebrew/versions
brew install bash-completion2
brew install readline
brew install wget --enable-iri
brew install vim --override-system-vi
brew install homebrew/dupes/grep
brew install homebrew/dupes/openssh
brew install homebrew/dupes/screen

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
brew install rename
brew install ssh-copy-id
brew install tmux
brew install tree
brew install wget
brew install zopfli

brew cleanup
