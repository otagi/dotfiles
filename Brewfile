# Casks
echo Installing cask ...

brew tap phinze/cask || true
brew install brew-cask || true

# Dev tools
echo Installing dev tools ...

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

# medias
echo Installing medias tools ...

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

# languages
echo Installing languages ...

brew install node
brew install ruby-build
brew install ruby-install
brew install python

# databases
echo Installing databases ...

brew install redis
brew install memcached
brew install mongodb
brew install sqlite
brew install mysql
brew cask install postgres

# Common tools
echo Installing common tools ...

brew cask install --appdir="/Applications" sublime-text
brew cask install --appdir="/Applications" alfred
brew cask install --appdir="/Applications" dropbox
brew cask install --appdir="/Applications" google-drive
brew cask install --appdir="/Applications" flux
brew cask install --appdir="/Applications" google-chrome
brew cask install --appdir="/Applications" hipchat
brew cask install --appdir="/Applications" iterm2
brew cask install --appdir="/Applications" macdown
brew cask install --appdir="/Applications" onepassword
brew cask install --appdir="/Applications" slack
brew cask install --appdir="/Applications" vlc
brew cask install --appdir="/Applications" transmit
brew cask install --appdir="/Applications" virtualbox
brew cask install --appdir="/Applications" vagrant
brew cask install --appdir="/Applications" sourcetree

# Tp stuff
echo Installing weird stuffs ...

brew cask install xquartz
brew cask install suspicious-package

# Misc
echo Installing misc stuff ...

brew cask install --appdir="/Applications" steam
brew cask install --appdir="/Applications" skype
brew cask install --appdir="/Applications" spotify
brew cask install --appdir="/Applications" spotify-notifications


# cleanup
echo Upgrade and Cleanup brew

brew cleanup --force
brew cask cleanup
rm -f -r /Library/Caches/Homebrew/*