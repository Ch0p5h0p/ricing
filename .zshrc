export ZSH="$HOME/.oh-my-zsh"

#ZSH_THEME="robbyrussell"

plugins=(git zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh


alias ls="ls --color"
alias pipes="pipes.sh -t 3"


PROMPT='%B%F{white} %n %F{#74c7ec}| %~ %F{white}> %b%F{white}'

fe() {
	local file
	file=$(fzf --height 40% --layout=reverse --border --preview 'bat --style=numbers --color=always {} 2>/dev/null || cat {}')
	if [ -n "$file" ]; then
		nvim "$file"
	fi
}

bindkey -s '^f' 'fe\n'

# adding butano
export PATH=$HOME/Tools/butano:$PATH
