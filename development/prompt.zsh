setprompt() {
   PROMPT="%F{2}%M%F{5}(${IMAGENAME:-base})%f: %F{3}$(dirs) %F{7}$%f "
}

function zle-line-init zle-keymap-select {
   setprompt
   zle reset-prompt
}

precmd() {
   setprompt
}

zle -N zle-line-init
zle -N zle-keymap-select
