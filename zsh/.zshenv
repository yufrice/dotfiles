export DOTDIR=${HOME}/dotfiles
export ZDOTDIR=${DOTDIR}/zsh
export ZLIBDIR=${DOTDIR}/lib

export EDITOR=vim
export LANG=en_US.UTF-8

if [ -z $ZSH_ENV_LOADED ]; then
	export PATH="${HOME}/miniconda3/bin:${PATH}"
	export PATH="${HOME}/bin:${PATH}"
	export ZSH_ENV_LOADED="1"
fi
