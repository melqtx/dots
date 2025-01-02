export ZSH="$HOME/.oh-my-zsh"
export PATH="$PATH:$HOME/.local/bin"
export PATH="$HOME/.emacs.d/bin:$PATH"
ZSH_THEME="agnoster"
alias da='date "+%Y-%m-%d %A %T %Z"'
alias mv='mv -i'
alias rm='trash -v'
alias vim='nvim'
alias iv='nvim'
alias ivm='nvim'
alias vi='nvim'
alias mkdir='mkdir -p'
alias ps='ps auxf'
alias ping='ping -c 10'
alias less='less -R'
alias cls='clear'
alias vi='nvim'
alias svi='sudo vi'
alias vis='nvim "+set si"'
alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias bd='cd "$OLDPWD"'
alias rmd='/bin/rm  --recursive --force --verbose '
alias h="history | grep "
alias p="ps aux | grep "
alias topcpu="/bin/ps -eo pcpu,pid,user,args | sort -k 1 -r | head -10"
alias f="find . | grep "
alias countfiles="for t in files links directories; do echo \`find . -type \${t:0:1} | wc -l\` \$t; done 2> /dev/null"
alias rebootsafe='sudo shutdown -r now'
alias rebootforce='sudo shutdown -r -n now'
alias logs="sudo find /var/log -type f -exec file {} \; | grep 'text' | cut -d' ' -f1 | sed -e's/:$//g' | grep -v '[0-9]$' | xargs tail -f"
alias nerdfetch="fm6000"
alias update='sudo pacman -Syu && yay -Syu'
alias whatismyip="whatsmyip"
function whatsmyip () {
    # Internal IP Lookup.
    if command -v ip &> /dev/null; then
        echo -n "Internal IP: "
        ip addr show wlan0 | grep "inet " | awk '{print $2}' | cut -d/ -f1
    else
        echo -n "Internal IP: "
        ifconfig wlan0 | grep "inet " | awk '{print $2}'
    fi

    # External IP Lookup
    echo -n "External IP: "
    curl -s ifconfig.me
}


export QT_QPA_PLATFORMTHEME=qt5ct
plugins=(git zsh-autosuggestions zsh-syntax-highlighting git)
source $ZSH/oh-my-zsh.sh
#export LS_COLORS="di=36:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
eval "$(starship init zsh)"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
