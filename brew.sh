if [[ $(command -v /opt/homebrew/bin/brew) == "" ]]; then
    echo "Installing Hombrew"
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

    # add brew to the path for the current session
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    # add brew to the path for the current session
    eval "$(/opt/homebrew/bin/brew shellenv)"

    echo "Updating Homebrew"
    brew update
fi

# Casks
brew install --cask ghostty
brew install --cask spotify
brew install --cask discord

# 1password
brew install --cask 1password
brew install 1password-cli
brew install mas
mas install 1569813296  # 1password for Safari

# Packages
brew install ascii
brew install tldr
brew install wget
brew install p7zip
brew install neovim
brew install git
brew install tmux
brew install fish
brew install jq
brew install gh
brew install awscli

# pyhton
brew install python

# golang
brew install go

# node
brew install n
N_PREFIX=/opt/homebrew n lts

