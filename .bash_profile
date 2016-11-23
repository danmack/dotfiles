# default bash_profile

# change these to match the location of the completion
# and prompt files

# informative / pretty git prompt support
# paths are for os-x with Xcode installed, change as needed
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-completion.bash 
source /Applications/Xcode.app/Contents/Developer/usr/share/git-core/git-prompt.sh 
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWCOLORHINTS=1
GIT_PS1_SHOWDIRTYSTATE=true
PROMPT_COMMAND='__git_ps1 "\h:\w" "\\\$ "'

alias ls='ls -aCF'

# if using rustup, this will need to be in path
export PATH="$HOME/.cargo/bin:$PATH"

