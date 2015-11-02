# Casks
echo "-------------------------------"
echo Installing cask ...
echo "-------------------------------"

brew tap phinze/cask || true
brew install brew-cask || true

# Dev tools
echo "-------------------------------"
echo Installing dev tools ...
echo "-------------------------------"

brew install z
brew install rbenv
brew install colordiff
brew install gh #github client
brew install gist
brew install git
brew install jq #jq is a lightweight and flexible command-line JSON processor.
brew install phantomjs
brew install readline
brew install zsh
brew install heroku-toolbelt
brew install elasticsearch
brew install git-flow-avh
brew install nginx
brew install sphinx
brew install node
brew install openssl
brew install ossp-uuid
brew install pkg-config
brew install tig
brew install webkit2png
brew install cmatrix
brew install fortune

# medias
echo "-------------------------------"
echo Installing medias tools ...
echo "-------------------------------"

brew install graphicsmagick
brew install imagemagick
brew install jpeg
brew install openjpeg
brew install libffi
brew install ffmpeg
brew install pixman
brew install lame
brew install fontconfig
brew install freetype
brew install libpng
brew install libtiff
brew install libtool
brew install libyaml
brew install media-info
brew install x264
brew install xvid
brew install xz
brew install gifsicle

# languages
echo "-------------------------------"
echo Installing languages ...
echo "-------------------------------"

brew install node
brew install ruby-build
brew install ruby-install
# brew install python

# databases
echo "-------------------------------"
echo Installing databases ...
echo "-------------------------------"

brew install redis
brew install memcached
brew install mongodb
brew install sqlite
brew install mysql
brew cask install postgres

# Common tools
echo "-------------------------------"
echo Installing common tools ...
echo "-------------------------------"

brew tap caskroom/versions
brew cask install --appdir="/Applications" appcleaner
brew cask install --appdir="/Applications" atom
brew cask install --appdir="/Applications" dash
brew cask install --appdir="/Applications" coconutbattery
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" github-desktop
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" firefox
brew cask install --appdir="/Applications" imageoptim
brew cask install --appdir="/Applications" marked
brew cask install --appdir="/Applications" onepassword
brew cask install --appdir="/Applications" paparazzi
brew cask install --appdir="/Applications" psequel
brew cask install --appdir="/Applications" rowanj-gitx
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" textmate
brew cask install --appdir="/Applications" transmit
brew cask install --appdir="/Applications" sequel-pro
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" superduper

# Tp stuff
echo "-------------------------------"
echo Installing weird stuffs ...
echo "-------------------------------"

brew cask install xquartz
brew cask install suspicious-package

# cleanup
echo "-------------------------------"
echo Upgrade and Cleanup brew
echo "-------------------------------"

brew cleanup --force
brew cask cleanup
rm -f -r /Library/Caches/Homebrew/*
