#aliases
alias spt="curl -s https://raw.githubusercontent.com/sivel/speedtest-cli/master/speedtest.py | python3 -"
alias wj='curl wttr.in/jerusalem'
alias wp='curl wttr.in/paphos'
#alias xx='_x() { curl https://cht.sh/$1 ;}; _x'

alias c='clear'
alias r='ranger'
alias ff='fastfetch'
alias f='fastfetch --config neofetch.jsonc'

alias n="nano"
alias s="sudo"
alias sn="sudo nano"
alias v='vim'
alias svv='sudo vim'

alias rr="rm -rf"
alias srr="sudo rm -rf"

alias h="history"

alias we="whereis"
alias w="which"

alias cp="cp -i"
alias mv='mv -i'

alias l='eza -a --color always --long --git --no-filesize --icons always --no-time --no-user'
alias ll='eza -lhao'
alias lt=' eza --tree'
alias lk='lsblk'

alias bbb="source ~/.bashrc"
alias n.="nano ~/.bashrc"
alias nb="nano ~/.bash_aliases"

alias v.="vim ~/.bashrc"
alias vb="vim ~/.bash_aliases"

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias cc='cd ~/.config/'
alias cdd='cd ~/Downloads/'
alias cdc='cd /mnt/data/'
alias cg='cd ~/git/'
alias cdf='cd ~/ss/'

# yt-dlp
alias yt="yt-dlp -x --audio-format mp3 -o='~/Music/%(title)s.%(ext)s'"
alias ytm="yt-dlp -f mp4 -o='~/Videos/%(title)s.%(ext)s'"

alias lo='sudo updatedb; locate'
alias lu='sudo updatedb'

alias md='mkdir -pv'

alias po='loginctl poweroff'
alias re='loginctl reboot'

alias gc='git clone'
alias gps='git push -u origin main'
alias g='~/bin/gstatus.sh'
#alias g='cd ~/ss && git status && cd -'
alias gss='git commit -m "save"'
alias ga='git add *'
alias gpp='git pull'
alias ggg='cd ~/ss && git add * && git commit -m "commit" && git push -u origin main && cd ~'
alias gp='cd ~/ss && git pull && cd ~'
alias gg='~/bin/gpush.sh'

alias ap='apropos'
alias bb='btop'
alias t='htop'
alias nur='ncdu / --exclude /mnt --exclude /vt'
alias nu='ncdu .'
alias th='sudo -sE thunar'
alias nm='sudo -sE nemo'

alias ts='sudo -sE timeshift-gtk'
alias tsc='sudo timeshift --create'
alias tsr='sudo timeshift --restore'
alias tsl='sudo timeshift --list'
alias tss='~/bin/tshift.sh'

alias ch='chmod +x'
alias co='sudo chown vago:'
alias dk='sudo dpkg -i'
alias dkil='dpkg --get-selections | grep -v deinstall'

alias gu='sudo -sE /sbin/gufw-pkexec'
alias gd='sudo -sE gnome-disks'
alias ggp='sudo -sE gparted'
alias gw='sudo -sE usbimager'

alias ug='sudo grub-mkconfig -o /boot/grub/grub.cfg'
alias ugm='sudo update-grub'

alias ccc='du -sh ~/.cache/'
alias ccd='rm -rf ~/.cache/*'

alias pi='sudo xbps-install -y'
alias pss='sudo xbps-query -Rs'
alias pui='sudo xbps-remove -F'
alias tm='sudo fstrim -av'

alias pm='sudo nano /etc/pacman.d/mirrorlist'
alias pl='sudo cat /var/log/pacman.log'

alias u='sudo xbps-install -Suy'

alias nwc='nano ~/.config/waybar/config'
alias nws='nano ~/.config/waybar/style.css'

alias cw='cd ~/.config/waybar/'


alias cf='nano  ~/.config/fish/config.fish'
alias cpi='~/bin/cpinst.sh'
alias bh='~/bin/bh'
alias ngr='sudo nano /etc/default/grub'
alias ft='sudo nano /etc/fstab'
alias fh='nano  ~/.local/share/fish/fish_history'
alias af='nano ~/.config/fish/alias.fish'
alias b='bat -pl conf'

alias mf=' sudo -sE mintstick -m format'
alias mi=' sudo -sE mintstick -m iso'

alias fc="sudo sh -c 'echo 3 >/proc/sys/vm/drop_caches'"
alias se='~/bin/sleep.sh'
alias ee='pgrep sleep'
alias mk='makoctl history'

alias cdv='cd /mnt/vt'
alias cds='cd /mnt/shared-data'
alias vv='cd ~/vago'

alias dff='df -h --exclude-type tmpfs'
alias duu='du -h --max-depth=1'

alias ny='TZ='America/New_York' date'
alias la='TZ='America/Los_Angeles' date'

alias spc='~/bin/sharedtopc.sh'
alias ph='~/bin/phonebup.sh'

alias dd='~/bin/dd.sh'

alias mnd='sudo mount /dev/disk/by-label/data /mnt/data/'

alias ns='nano ~/.config/sway/config'
