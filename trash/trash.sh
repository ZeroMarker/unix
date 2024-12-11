apt install trash-cli

trash-put file.log
trash-list
trash-empty
trash-restore
trash-rm

vi ~/.bashrc
alias rm='trash-put'
alias rl='trash-list'


