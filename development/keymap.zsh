function rationalize_dot () {
   local MATCH
   if [[ $LBUFFER =~ '(^|/| |     |'$'\n''|\\\;\&)\.\.$' ]]; then
      LBUFFER+=/
      zle self-insert
   fi
   zle self-insert
}

zle -N rationalize_dot
bindkey . rationalize_dot
bindkey -M isearch . self-insert

function unrationalize_dot () {
   local MATCH
   if [[ $LBUFFER =~ '(^|/| |     |'$'\n''|\\\;\&)\.\.$' ]]; then
      zle backward-delete-char
      if [[ $MATCH =~ '^/' ]]; then
         zle backward-delete-char
      fi
   fi
   zle backward-delete-char
}

zle -N unrationalize_dot
bindkey "^h" unrationalize_dot
bindkey "^?" unrationalize_dot
