# Path to your oh-my-zsh configuration.
ZSH=/usr/share/oh-my-zsh/

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...



#------------------------------
# my-bash config

#editor
export EDITOR="vim"

# some more aliases
alias v='vim'
alias vi='vim'
alias less='less -M --chop-long-lines'
alias hello='cat /etc/motd'
alias gg='g++ --std=c++11 test.cpp && ./a.out '
alias ll='ls -a -l -h --color=auto'
alias la='ls -A --color=auto'
alias l='ls -CF --color=auto'
alias lt='ls -lt --color=auto'
alias e='exit'
alias c='cd'
alias halt='halt -p'
alias rm='rm -i'
alias pacman='pacman --color=always'
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto -n'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi


PS1='%{$fg_bold[green]%}%p[%c]%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%} % %{$reset_color%}'



#ls color
export LS_COLORS='no=00:fi=01;93:di=01;92:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=01;05;37;41:mi=01;05;37;41:ex=01;35:*.cmd=01;35:*.exe=01;35:*.com=01;35:*.btm=01;35:*.bat=01;35:*.sh=01;35:*.csh=01;35:*.7z=01;31:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.rar=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.bz=01;31:*.tz=01;31:*.rpm=01;31:*.cpio=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.xbm=01;35:*.xpm=01;35:*.png=01;35:*.tif=01;35:*.pdf=01;97'


# load autojump
source /usr/share/oh-my-zsh/plugins/autojump/autojump.plugin.zsh

#键盘映射
#xmodmap $HOME/.Xmodmap
#禁掉触touchpad
synclient TouchPadOff=1      

#随机数
alias random='echo $RANDOM'

#ANTLR4
alias antlr4='java -jar /usr/local/lib/antlr-4.2.1-complete.jar'
alias grun='java org.antlr.v4.runtime.misc.TestRig'

#乱七八糟字符
alias symbol='echo ε epsilon   ω omega   α alpha   β beta   θ theta   ∂ partial ∑ sum   γ gamma   ζ zeta    ξ cursive    Σ sigma'

# Beego
alias bee='/root/.gocode/bin/bee'
export PYTHONSTARTUP=~/.pythonstartup

# mount
alias mount='mount -o utf8'

# sticky
alias sticky='sticky.py'

# NOT shutdown
alias shutdown='echo 张理伟sb'

# json formator in command line by `python -mjson.tool`
alias pp='python -mjson.tool'
