# Jarshwah's dotfiles

Dotfiles by Mathias (https://github.com/mathiasbynens/dotfiles) with symlink
deployment by Holman (https://github.com/holman/dotfiles).

Using rsync to put the dotfiles where they need to go works fine, but over time
your dotfiles in $HOME and in your repository become out of sync. I found I was
spending too long trying to work out the differences between the two sets of
files.

So I decided they should be symlinked! I borrowed some bash functions, and
here we are.

## Installation

### Using Git and the bootstrap script

You can clone the repository wherever you want. Some like to put it in
`$HOME/.dotfiles/` but I prefer `$HOME/development/dotfiles`. Note that the
bootstrap file does **not** do a `git pull` so you'll need to make sure your
repository is up to date periodically.

```bash
git clone https://github.com/jarshwah/dotfiles && cd dotfiles
```

To update, `cd` into your local `dotfiles` repository and then:

```bash
source bootstrap.sh
```

This will symlink all the files from `dotfiles/symlink/` to your $HOME
directory. If there are clashes with existing files, you will be prompted
to overwrite, skip, or backup. It will also attempt to install homebrew if it
is not yet installed.

## What you get

### A bash prompt

I've intentionally kept the prompt very simple to maximise usable space in
the terminal. Feel free to modify and use all the available colours.

### Various configurations

Vim, tmux, screen and wget supplied config files with some basic defaults -
ready for you to modify and personalise.

### A place to store your arbitrary config files

Just copy your config files into the dotfiles/symlink directory, and it will be
deployed to your $HOME directory when you run the bootstrap script.

### Sensible OSX Defaults

When setting up a new Mac, you may want to set some sensible OS X defaults:

```bash
./.osx
```

You should look over this script first, especially while paying attention to the
computer names at the top of the file.

### Homebrew Packages

Maintain a list of your home brew packages in the BrewFile, and home brew casks
in your CaskFile. Simply install by:

```bash
brew bundle BrewFile
brew bundle CaskFile
```

### PATH

Manage your `$PATH` variable in the `.path` file. We already add the homebrew
bin and $HOME/bin so you don't have to.

### Environment Variables

Store all your environment variables in the `.exports` file. We've got your
history and python startup covered.

### Private Data

The `.bash_profile` will try to source `~/.extra` if it exists. This is the
place for you to put your private data and variables. You might want to setup
your git config in this file:

```bash
# Git credentials
# Not in the repository, to prevent people from accidentally committing
# under my name
GIT_AUTHOR_NAME="Josh Smeaton"
GIT_COMMITTER_NAME="$GIT_AUTHOR_NAME"
git config --global user.name "$GIT_AUTHOR_NAME"
GIT_AUTHOR_EMAIL="jarshwah@example.com"
GIT_COMMITTER_EMAIL="$GIT_AUTHOR_EMAIL"
git config --global user.email "$GIT_AUTHOR_EMAIL"
```

## Feedback

Suggestions/improvements [welcome](https://github.com/jarshwah/dotfiles/issues)!

Though you are probably better off forking https://github.com/mathiasbynens/dotfiles
which is what this project is based on. You'll get much more support and progress
there.

## Thanks to…

* [Mathias](https://github.com/mathiasbynens/dotfiles) for creating a really great base to work from
* [Holman](https://github.com/holman/dotfiles) for having some sane deployment scripts

(original thanks by Mathias below)

* [Gianni Chiappetta](http://gf3.ca/) for sharing his [amazing collection of dotfiles](https://github.com/gf3/dotfiles)
* [Matijs Brinkhuis](http://hotfusion.nl/) and his [dotfiles repository](https://github.com/matijs/dotfiles)
* [Jan Moesen](http://jan.moesen.nu/) and his [ancient `.bash_profile`](https://gist.github.com/1156154) + [shiny _tilde_ repository](https://github.com/janmoesen/tilde)
* [Ben Alman](http://benalman.com/) and his [dotfiles repository](https://github.com/cowboy/dotfiles)
* [Nicolas Gallagher](http://nicolasgallagher.com/) and his [dotfiles repository](https://github.com/necolas/dotfiles)
* [Tom Ryder](http://blog.sanctum.geek.nz/) and his [dotfiles repository](https://github.com/tejr/dotfiles)
* [Chris Gerke](http://www.randomsquared.com/) and his [tutorial on creating an OS X SOE master image](http://chris-gerke.blogspot.com/2012/04/mac-osx-soe-master-image-day-7.html) + [_Insta_ repository](https://github.com/cgerke/Insta)
* @ptb and [his _OS X Lion Setup_ repository](https://github.com/ptb/Mac-OS-X-Lion-Setup)
* [Lauri ‘Lri’ Ranta](http://lri.me/) for sharing [loads of hidden preferences](http://lri.me/hiddenpreferences.txt)
* [Tim Esselens](http://devel.datif.be/)
* anyone who [contributed a patch](https://github.com/mathiasbynens/dotfiles/contributors) or [made a helpful suggestion](https://github.com/mathiasbynens/dotfiles/issues)
