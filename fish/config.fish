
if not status --is-login
    exit
end

# prompt
# set -x SPACEFISH_USER_SHOW always
set -x SPACEFISH_CHAR_SYMBOL π

# path
set -x fish_user_paths /usr/local/bin /usr/local/sbin

# homebrew
alias brew 'env PATH=/usr/local/bin:/usr/local/sbin:/usr/bin:/usr/sbin:/bin:/sbin brew'
set -x HOMEBREW_NO_ANALYTICS 1

# rust
set -x fish_user_paths "$HOME/.cargo/bin" $fish_user_paths

# go path
set -x GOPATH "$HOME/.gocode"
set -x fish_user_paths "$GOPATH/bin" $fish_user_paths

# theos
set -x THEOS "/opt/theos"
set -x fish_user_paths "$THEOS/bin" $fish_user_paths

# ~/bin
set -x fish_user_paths "$HOME/bin" $fish_user_paths


#
alias ll 'ls -lh'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'
alias rm 'rm -i'
alias mv 'mv -i'
alias cp 'cp -i

# 
function man
    env \
    LESS_TERMCAP_mb=(printf "\e[1;31m") \
    LESS_TERMCAP_md=(printf "\e[1;31m") \
    LESS_TERMCAP_me=(printf "\e[0m") \
    LESS_TERMCAP_se=(printf "\e[0m") \
    LESS_TERMCAP_so=(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=(printf "\e[0m") \
    LESS_TERMCAP_us=(printf "\e[1;32m") \
    command man $argv
end
