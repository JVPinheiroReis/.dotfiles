# Omarchy environment (OMARCHY_PATH + PATH), needed even for non-interactive shells
[[ -r /usr/share/omarchy/default/bash/env-bootstrap ]] && source /usr/share/omarchy/default/bash/env-bootstrap

# If not running interactively, don't do anything else (leave this above the rc source)
[[ $- != *i* ]] && return

# All the default Omarchy aliases and functions
# (don't mess with these directly, just overwrite them here!)
source "$OMARCHY_PATH/default/bash/rc"

alias ff='fastfetch'
alias g="git"
alias ls='eza --icons=always'
alias l='eza -lah --icons=always'
alias lt='eza --tree --icons=always'
alias nv='nvim'
alias t='trash-put'
alias tc='rm -rf ~/.local/share/Trash/*'
alias v='vim'
alias y='yt-dlp -o "%(title)s.%(ext)s"'
alias ya='y -f "ba/b" -x --audio-format mp3'
alias ym='y -f "ba/b" -x --audio-format m4a'
alias yv='y -f "bv*+ba/b" --merge-output-format mp4'
alias yc='y --cookies-from-browser chromium'
alias yca='ya --cookies-from-browser chromium'
alias ycm='ym --cookies-from-browser chromium'
alias ycv='yv --cookies-from-browser chromium'
alias yz='yazi'
alias z='zeditor'

alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias sha256sum-dir='rm SHA256SUM && find -type f -exec sha256sum {} \; | sort > SHA256SUM'
alias sha256sum-dir-check='sha256sum -c SHA256SUM | grep -v " OK"'

# Added by Antigravity CLI installer
export PATH="/home/jv/.local/bin:$PATH"
