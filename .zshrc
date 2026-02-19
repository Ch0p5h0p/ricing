export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# List of H2G2 quotes for a MOTD
quotes=(
    "Time is an illusion. Lunchtime doubly so."
    "A common mistake that people make when trying to design something completely foolproof is to underestimate the ingenuity of complete fools."
    "For a moment, nothing happened. Then, after a second or so, nothing continued to happen."
    "In the beginning the Universe was created. This has made a lot of people very angry and been widely regarded as a bad move."
    "So long, and thanks for all the fish."
    "The Answer to the Ultimate Question of Life, the Universe, and Everything is… 42."
    "Life? Don't talk to me about life."
    "Don't Panic."
    "It is a mistake to think you can solve any major problems just with potatoes."
    "The ships hung in the sky in much the same way that bricks don’t."
)

logo="⠀⣀⣀⣀⡀⠀⠀⠀⠀⣀⣤⣶⣶⣾⣿⣿⣿⣷⣶⣶⣤⣄⡀⠀⠀⠀⠀⠀⠀⠀
⣾⣿⠛⠛⠛⠛⢶⣴⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣶⣄⠀⠀⠀⠀⠀
⢹⣿⡀⠀⠀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⠉⠛⣿⣷⣄⠀⠀⠀
⠀⢻⣷⣀⣾⣿⡟⠁⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⣸⣿⣿⣆⠀⠀
⠀⠀⠙⠁⠻⣿⣿⣿⣿⣦⣄⠀⠀⠙⢿⣿⣿⣿⣄⠀⠀⢀⠠⠊⠀⠀⠹⣿⡇⠀
⠀⠀⢰⣷⡄⠈⢿⣿⣿⣿⣿⡆⠀⠀⠀⠀⠉⠛⢿⣶⡖⠁⠀⠀⠀⢀⣴⣿⣿⠀
⠀⠀⣾⣿⣿⣦⡀⠙⢿⣿⣿⣿⣄⠀⠀⠀⠀⠀⠀⠹⣷⣄⠀⣠⠔⠛⠻⣿⣿⡇
⠀⠀⢻⣿⣿⣿⣿⣦⡀⠙⢿⣿⣿⣷⡀⠀⠀⠀⠀⠀⠹⣿⣟⠁⠀⠀⠀⣽⣿⠃
⠀⠀⠘⣿⣿⣿⣿⣿⣿⣦⡀⠉⠻⡿⠁⠀⠀⠀⠀⠀⠀⣿⣿⣦⣤⣤⣾⣿⡟⠀
⠀⠀⠀⠹⣿⣿⣿⣿⣿⣿⣿⠷⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣿⣿⣿⠃⠀
⠀⠀⠀⠀⠙⢿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⡿⢻⡄⠀
⠀⠀⠀⠀⠀⠈⠻⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠻⢿⣿⣿⡿⠋⠀⠀⢻⡄
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣤⣿⣷⣦⡄⣨⣯⣄⡀⠀⠀⢀⣿
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠐⠛⠛⠋⠉⠀⠀⠀⠉⠙⠻⠿⠿⠿⠋"

print -P "\n🪐 %F{yellow}%B\"${quotes[$RANDOM % ${#quotes[@]} + 1]}\"%b%f\n" | fold -s -w $COLUMNS

print -P "%F{cyan}%B${logo}%f%b\n"

alias ls="ls --color"

PROMPT='%B%F{cyan}%n@%m %F{green}[ %~ ] %#%b%F{white} '
#PROMPT='%B%F{cyan}%n@%m%f %F{green} %F{yellow}%~%f %B%F{red}%f%b %# '
#PROMPT='%B%F{cyan}%n@%m%f %F{green}[ %~ ]%f%b
#%F{yellow}➜%f '
RPROMPT='%F{blue}%*%f'  # current time
