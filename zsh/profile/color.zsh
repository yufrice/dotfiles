eval $(dircolors ${ZDOTDIR}/lib/dircolors-solarized/dircolors.256dark)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
