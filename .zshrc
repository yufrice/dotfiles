source ~/.zplug/zplug

zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "junegunn/dotfiles", as:command, of:bin/vimcat

zplug "tcnksm/docker-alias", of:zshrc, as:plugin

zplug "k4rthik/git-cal", as:command, frozen:1

zplug "junegunn/fzf-bin", \
    as:command, \
    from:gh-r, \
    file:fzf

zplug "plugins/git", from:oh-my-zsh

zplug "tj/n", do:"make install"

zplug "b4b4r07/enhancd", at:v1
zplug "mollifier/anyframe", commit:4c23cb60

zplug "hchbaw/opp.zsh", if:"(( ${ZSH_VERSION%%.*} < 5 ))"

zplug "b4b4r07/79ee61f7c140c63d2786", \
    from:gist, \
    as:command, \
    of:get_last_pane_path.sh

zplug "stedolan/jq", \
    as:command, \
    file:jq, \
    from:gh-r \
    | zplug "b4b4r07/emoji-cli"

if ! zplug check --verbose; then
    printf "Install? [y/N]: "
    if read -q; then
        echo; zplug install
    fi
fi

zplug load --verbose
