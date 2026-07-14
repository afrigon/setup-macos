function confirm {
    echo "\x1b[1;31m "
    echo $1
    echo "\x1b[0m "
    read -n 1 -s -r -p "Press any key to continue"
    echo ""
}

confirm "Make sure terminal has the 'Full Disk Access' permission, otherwise some settings will not apply correctly"

xcode-select --install

source ./brew.sh
source ./defaults.sh
source ./dock.sh
source ./xcode.sh

confirm "Enable 1password-cli by navigating to 1password settings > Developer and selecting Integrate with 1password CLI."
source ./1password.sh

source ./dotfiles.sh

grep fish /etc/shells || (sudo bash -c 'echo $(which fish) >> /etc/shells' && chsh -s $(which fish))

