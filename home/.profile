# Settings for all shels


# Setting up editor 
#EDITOR="vim" # Default editor
#export EDITOR='bash -lc "mvim -f \$*" mvim '
export EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'
export GIT_EDITOR='mvim -f -c "au VimLeave * !open -a Terminal"'

# Add user bins to path
#PATH=$PATH:~/.bin:/usr/local/bin

# PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# For npm installed binaries
export PATH=/usr/local/share/npm/bin:$PATH
export NODE_PATH="/usr/local/lib/node"
