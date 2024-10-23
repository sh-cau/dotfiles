echo "Loading /home/sh/.bash_aliases"
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -lhAF'

alias cd..='cd ..'
alias ap='apropos'

#TMUX
alias tmuxa="tmux -2 attach"
alias t="tmux -2"

# because Im and idiot
alias ragner="ranger"

# Neovim
alias v="nvim"
alias vi="nvim"
alias vim="nvim"

# vpn
alias kitvpn="sudo openvpn --daemon --config ~/work/projects/mvm-dpe/orga/vpn/kit-v6.ovpn"
alias kitsplitvpn="sudo openvpn --daemon --config ~/work/projects/mvm-dpe/orga/vpn/kit-split.ovpn"

# backups
alias backuptex="fd -t f -e tex -p tandalone ~/work -x rsync -a --stats "{}" ~/nextcloud-kit/.backup/.texStandalones"
alias backuptikz="fd -t f -e tikz -p tikz ~/work -x rsync -a --stats "{}" ~/nextcloud-kit/.backup/.tikzFiles"

# rw = read/write, uid and gid needed so that "sh" can read and write (instead of only root), nounix and sec=ntlmssp needed for mac share. This only works if a user "share" in group "staff" exists on the mac.
# alias mountmacshare="sudo mount.cifs //192.168.0.124/Development/ ~/virtualbox_vms/macOS_shared/ -o username=sh,password=sh25,domain=staff,nounix,sec=ntlmssp,rw,uid=$(id -u),gid=$(id -g)"
alias mountmacshare="sudo mount.cifs //192.168.122.186/Development/ ~/virtualbox_vms/macOS_shared/ -o username=sh,password=sh25,domain=staff,nounix,sec=ntlmssp,rw,uid=$(id -u),gid=$(id -g)"

alias xournal="xournalpp"

alias fd="fd --ignore-file ~/.config/fd/ignore"
alias pdfunite="/usr/bin/pdfunite"
alias gcl='gitlab-ci-local'
