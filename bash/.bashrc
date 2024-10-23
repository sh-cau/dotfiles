# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

echo "Loading /home/sh/.bashrc"
# If not running interactively, don't do anything
case $- in
    *i*) ;; *) return;;
esac

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=20000
HISTFILESIZE=20000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# should be avoided!
# export TERM=xterm-256color-italic

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

prompt_git() {
	local s='';
	local branchName='';

	# Check if the current directory is in a Git repository.
	git rev-parse --is-inside-work-tree &>/dev/null || return;

	# Check for what branch we’re on.
	# Get the short symbolic ref. If HEAD isn’t a symbolic ref, get a
	# tracking remote branch or tag. Otherwise, get the
	# short SHA for the latest commit, or give up.
	branchName="$(git symbolic-ref --quiet --short HEAD 2> /dev/null || \
		git describe --all --exact-match HEAD 2> /dev/null || \
		git rev-parse --short HEAD 2> /dev/null || \
		echo '(unknown)')";

	# Early exit for Chromium & Blink repo, as the dirty check takes too long.
	# Thanks, @paulirish!
	# https://github.com/paulirish/dotfiles/blob/dd33151f/.bash_prompt#L110-L123
	repoUrl="$(git config --get remote.origin.url)";
	if grep -q 'chromium/src.git' <<< "${repoUrl}"; then
		s+='*';
	else
		# Check for uncommitted changes in the index.
		if ! $(git diff --quiet --ignore-submodules --cached); then
			s+='+';
		fi;
		# Check for unstaged changes.
		if ! $(git diff-files --quiet --ignore-submodules --); then
			s+='!';
		fi;
		# Check for untracked files.
		if [ -n "$(git ls-files --others --exclude-standard)" ]; then
			s+='?';
		fi;
		# Check for stashed files.
		if $(git rev-parse --verify refs/stash &>/dev/null); then
			s+='$';
		fi;
	fi;

	[ -n "${s}" ] && s=" [${s}]";

	echo -e "${1}${branchName}${2}${s}";
}

if [ "$color_prompt" = yes ]; then
	bold=$(tput setaf bold);
	reset=$(tput setaf sgr0);

	orange=$(tput setaf 166);
	yellow=$(tput setaf 226);
	green=$(tput setaf 71);
	white=$(tput setaf 15);
	blue=$(tput setaf 33);
	cyan=$(tput setaf 37);
	purple=$(tput setaf 125);
	gray=$(tput setaf 240);
	red=$(tput setaf 124);
	violet=$(tput setaf 61);
	PS1='\[${bold}\]'; #
	PS1+='\[${orange}\]\u'; #username
	PS1+='\[${white}\]|'; 
	PS1+='\[${gray}\]\h'; #host
	PS1+='\[${white}\]|'; 
	PS1+='\[${blue}\]\W'; #working directory
	PS1+="\$(prompt_git \"\[${white}\]|\[${red}\]\" \"\[${red}\]\")"; # Git repository details
	PS1+='\[${white}\]\$ '; 
    export PS1	
    # PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

# prevents terminal from freezing if ctrl-s is pressed
stty -ixon

export VISUAL=nvim
export EDITOR=nvim
export DOTFILES=$HOME/repos/dotfiles
export LATEXDIFF_CONFIG=$HOME/repos/dotfiles/.config/latexdiff

# FZF 
# follow symbolic links search hidden files, search files, exclude .git and my backup folder and use colors
export FZF_DEFAULT_COMMAND="fd --hidden 
                               --type f 
                               --exclude .git 
                               --ignore-file ~/.config/fd/ignore" 
export FZF_DEFAULT_OPTS="--preview 'bat --color=always 
                                        --style=numbers 
                                        --line-range :500 {}' 
                         --layout=reverse 
                         --info=inline
                         --color=fg:#908caa,bg:#232136,hl:#ea9a97
                         --color=fg+:#e0def4,bg+:#393552,hl+:#ea9a97
                         --color=border:#44415a,header:#3e8fb0,gutter:#232136
                         --color=spinner:#f6c177,info:#9ccfd8,separator:#44415a
                         --color=pointer:#c4a7e7,marker:#eb6f92,prompt:#908caa"
# ALT-C to change directory
# Print tree structure in the preview window
export FZF_ALT_C_OPTS="--walker-skip .git,node_modules,target
                       --preview 'tree -C {}'"
# CTRL-T to search for files
export FZF_CTRL_T_OPTS="--walker-skip .git,node_modules,target 
                        --preview 'bat -n --color=always {}' 
                        --bind 'ctrl-/:change-preview-window(down|hidden|)'"
# CTRL-R to search command history
export FZF_CTRL_R_OPTS="--preview 'echo {}' 
                        --preview-window up:3:hidden:wrap
                        --bind 'ctrl-/:toggle-preview'
                        --bind 'ctrl-y:execute-silent(echo -n {2..} | pbcopy)+abort'
                        --color header:italic
                        --header 'Press CTRL-Y to copy command into clipboard'"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# this avoids loading the global configuration in addition to mine
export RANGER_LOAD_DEFAULT_RC=false
# inficate if shell is run in a ranger window
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi


# add mlint to the PATH
export PATH=$PATH:/home/sh/programs/MATLAB/R2023a/bin/glnxa64/

# add .net core to the PATH
export DOTNET_ROOT=$HOME/dotnet-arm64
export PATH=$PATH:$HOME/dotnet-arm64

# add chatGPT API key 
export OPENAI_API_KEY=$(secret-tool lookup host openai.com type token name chatgpt-api)

# thefuck
eval $(thefuck --alias)
eval $(thefuck --alias FUCK)


# bat
# this uses bat to color man pages, which is magnificent
if which "bat" > /dev/null 2>&1; then
    export MANPAGER="sh -c 'col -bx | bat -l man -p'"
fi

eval "$(zoxide init bash)"
###-begin-gitlab-ci-local-completions-###
#
# yargs command completion script
#
# Installation: /usr/local/bin/gitlab-ci-local completion >> ~/.bashrc
#    or /usr/local/bin/gitlab-ci-local completion >> ~/.bash_profile on OSX.
#
_gitlab-ci-local_yargs_completions()
{
    local cur_word args type_list

    cur_word="${COMP_WORDS[COMP_CWORD]}"
    args=("${COMP_WORDS[@]}")

    # ask yargs to generate completions.
    type_list=$(/usr/local/bin/gitlab-ci-local --get-yargs-completions "${args[@]}")

    COMPREPLY=( $(compgen -W "${type_list}" -- ${cur_word}) )

    # if no match was found, fall back to filename completion
    if [ ${#COMPREPLY[@]} -eq 0 ]; then
      COMPREPLY=()
    fi

    return 0
}
complete -o bashdefault -o default -F _gitlab-ci-local_yargs_completions gitlab-ci-local
###-end-gitlab-ci-local-completions-###

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
