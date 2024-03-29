# Don't do anything if non-interactive
if [ -z "$PS1" ]; then
	return
fi

# Define some colors to make the prompt pretty
GREEN="\e[0;32m"
PURPLE="\e[0;35m"
YELLOW="\e[1;33"
PLAIN="\e[0m"

# Define the prompt style
PS1="["
PS1+="${PURPLE}\u${PLAIN}"
PS1+="@"
PS1+="${GREEN}\h${PLAIN}"
PS1+="]"
PS1+="${YELLOW}\ \w ${PLAIN}\n"
PS1+=" \$ "

# Set the PATH variable
ORIGPATH="$PATH"
PATH="/usr/local/texlive/2023/bin/x86_64-linux"
PATH+=":$HOME/.emacs.d/bin"
PATH+=":$HOME/perl5/perlbrew/bin"
PATH+=":$HOME/.local/bin"
# Include MacPorts if using non-free macOS
if [[ $OSTYPE =~ darwin ]]; then
	PATH+=":/opt/local/bin" \
	PATH+=":/opt/local/sbin" \
	PATH+=":/Applications/MacPorts" \
	PATH+=":/Applications/Emacs.app/Contents/MacOS"
fi
PATH+=":$ORIGPATH"
export PATH="$PATH"

# Silence Bash warning on non-free macOS
if [[ $OSTYPE =~ darwin ]]; then
	export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# Load Perlbrew
if [[ -f /opt/perl5/etc/bashrc ]]; then
	source /opt/perl5/etc/bashrc
elif [[ -f $HOME/perl5/perlbrew/etc/bashrc ]]; then
	source $HOME/perl5/perlbrew/etc/bashrc
fi

if [[ $OSTYPE =~ darwin ]]; then
	export PERLBREW_ROOT=/opt/perl5
else
	export PERLBREW_ROOT=$HOME/perl5/perlbrew
fi

# Load the Node Version Manager
if [[ -d "$HOME/.nvm" ]]; then
	. "$HOME/.nvm/nvm.sh"
fi

# If Emacs exists with Doom, set as editor; else, try Vim; else, safe fallbacks
if [ -x "$(command -v doom)" ]; then
	EMACS_PATH=$(command -v emacs); export EDITOR=$EMACS_PATH
elif [ -x "$(command -v vim)" ]; then
	VIM_PATH=$(command -v vim); export EDITOR=$VIM_PATH
elif [ -x "$(command -v ee)" ]; then
	EE_PATH=$(command -v ee); export EDITOR=$EE_PATH
elif [ -x "$(command -v nano)" ]; then
	NANO_PATH=$(command -v nano); export EDITOR=$NANO_PATH
fi

# Alias "emacs" to client with itself as backup
if [ -x "$(command -v emacsclient)" ]; then
	alias emacs="emacsclient -c -a 'emacs'"
fi

# If "batcat" exists, alias it to "bat"
if [ -x "$(command -v batcat)" ]; then
	alias bat='batcat --paging=never'
fi

# If "xdg-open" exists, alias to "open" without output
if [ -x "$(command -v xdg-open)" ]; then
	alias open='xdg-open &>/dev/null'
fi

# If "sdkman" exists, load the appropriate shell scripts
if [[ -d "$HOME/.sdkman" ]]; then
	export SDKMAN_DIR="$HOME/.sdkman"
	source "$HOME/.sdkman/bin/sdkman-init.sh"
fi
