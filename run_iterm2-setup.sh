{{ if eq .chezmoi.os "darwin" -}}
#!/bin/sh

# Fail if iterm2 isn't installed
ITERM=$(which iterm2 2>/dev/null || /bin/true)
if [ ! -e "$ITERM" ]
then
	echo "zsh isn't installed, install or reboot. And rerun chezmoi."
	exit 0
fi

# Specify the preferences directory
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.config/iterm2"
# Tell iTerm2 to use the custom preferences in the directory
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true

{{- end }}
