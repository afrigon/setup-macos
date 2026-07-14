# Hide recent application section
defaults write com.apple.dock show-recents -bool false

# Disable single app mode
defaults write com.apple.dock single-app -bool false

# Set icon size
defaults write com.apple.dock tilesize -int 64

# Disable hot corners
defaults write com.apple.dock wvous-tl-corner -int 0
defaults write com.apple.dock wvous-tr-corner -int 0
defaults write com.apple.dock wvous-bl-corner -int 0
defaults write com.apple.dock wvous-br-corner -int 0

# Dock at the bottom
defaults write com.apple.dock orientation -string bottom

# Disable auto hide
defaults write com.apple.dock autohide -bool false

# Clear the dock
defaults delete com.apple.dock persistent-apps
defaults delete com.apple.dock persistent-others

# Dock apps
declare -a items=( \
    "/Applications/Google Chrome.app/" \
    "/Applications/Ghostty.app" \
    "/Applications/Xcode.app" \
    "/Applications/Spotify.app" \
    "/Applications/Discord.app" \
    "/System/Applications/Messages.app" \
    "/System/Applications/Calendar.app" \
    "/System/Applications/System Settings.app" \
)

for item in "${items[@]}"
do
    defaults write com.apple.dock persistent-apps -array-add "<dict><key>tile-data</key><dict><key>file-data</key><dict><key>_CFURLString</key><string>$item</string><key>_CFURLStringType</key><integer>0</integer></dict></dict></dict>"
done
unset item

# Downloads folder
defaults write com.apple.dock persistent-others -array-add "<dict><key>tile-data</key><dict><key>arrangement</key><integer>2</integer><key>file-data</key><dict><key>_CFURLString</key><string>file://$HOME/Downloads</string><key>_CFURLStringType</key><integer>15</integer></dict></dict><key>tile-type</key><string>directory-tile</string></dict>"

killall Dock
