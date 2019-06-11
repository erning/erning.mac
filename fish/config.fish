
# prompt
set SPACEFISH_CHAR_SYMBOL π
set SPACEFISH_PROMPT_ORDER user dir host git line_sep exit_code char

if not status --is-login
    exit
end

# path
set fish_user_paths /usr/local/bin /usr/local/sbin /usr/bin /usr/sbin /bin /sbin
if test (uname -s) = Linux
    set -p fish_user_paths \
           /home/linuxbrew/.linuxbrew/bin \
           /home/linuxbrew/.linuxbrew/sbin
end

# homebrew
alias brew "env PATH="(string join ':' $fish_user_paths)" brew"
set -x HOMEBREW_NO_ANALYTICS 1


# pip should only run if there is a virtualenv currently activated
# cache pip-installed packages to avoid re-downloading
set -x PIP_REQUIRE_VIRTUALENV true
set -x PIP_DOWNLOAD_CACHE "$HOME/.cache/pip"

# rust
set -p fish_user_paths "$HOME/.cargo/bin"

# go path
set -x GOPATH "$HOME/.gocode"
set -p fish_user_paths "$GOPATH/bin"

# theos
set -x THEOS "/opt/theos"
set -p fish_user_paths "$THEOS/bin"

# ~/bin
set -p fish_user_paths "$HOME/bin"

# vim uses SpaceVim while vi remains the simple configuration
alias vim 'vim -u ~/.SpaceVim/vimrc'
# macvim use SpaceVim
if command -qs mvim
    alias mvim 'mvim -u ~/.SpaceVim/vimrc'
end

# common alias
alias ll 'ls -lh'
alias grep 'grep --color=auto'
alias fgrep 'fgrep --color=auto'
alias egrep 'egrep --color=auto'
alias rm 'rm -i'
alias mv 'mv -i'
alias cp 'cp -i'

# colorful manual pages
function man
    env \
    LESS_TERMCAP_mb=(printf "\e[1;31m") \
    LESS_TERMCAP_md=(printf "\e[1;31m") \
    LESS_TERMCAP_me=(printf "\e[0m") \
    LESS_TERMCAP_se=(printf "\e[0m") \
    LESS_TERMCAP_so=(printf "\e[1;44;33m") \
    LESS_TERMCAP_ue=(printf "\e[0m") \
    LESS_TERMCAP_us=(printf "\e[1;32m") \
    man $argv
end
