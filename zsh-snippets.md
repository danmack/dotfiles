# zsh-snippets

This emulates the search forward/backward behaviour that works in
tcshrc and bash.  I prefer it to ctrl-r in bash search method.
Since zsh does not interpret .inputrc, you just need to add this
to your zshrc file (in the User Config section if useing oh-my-zsh)

````shell
bindkey '\ep' history-beginning-search-backward
bindkey '\en' history-beginning-search-forward
````
