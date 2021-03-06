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
PATH="$PATH"
PATH+=":$HOME/.emacs.d/bin"
PATH+=":$HOME/perl5/perlbrew/bin"
# Include MacPorts if using non-free macOS
if [[ $OSTYPE =~ darwin ]]; then
	PATH+=":/opt/local/bin" \
	PATH+=":/opt/local/sbin" \
	PATH+=":/Applications/MacPorts" \
	PATH+=":/Applications/MacPorts/Emacs.app/Contents/MacOS" \
	PATH+=":/Applications/MacPorts/EmacsMac.app/Contents/MacOS"
fi
export PATH="$PATH"

# Silence Bash warning on non-free macOS
if [[ $OSTYPE =~ darwin ]]; then
	export BASH_SILENCE_DEPRECATION_WARNING=1
fi

# Load Perlbrew
if [[ -f /opt/perl5/etc/bashrc ]]; then
	source /opt/perl5/etc/bashrc
fi
export PERLBREW_ROOT=/opt/perl5

# Load the Node Version Manager
if [[ -d "$HOME/.nvm" ]]; then
	. "$HOME/.nvm/nvm.sh"
fi

# If Emacs exists with Doom, set it as the editor; else, try Vim
if [ -x "$(command -v doom)" ]; then
	EMACS_PATH=$(command -v emacs); export EDITOR=$EMACS_PATH
elif [ -x "$(command -v vim)" ]; then
	VIM_PATH=$(command -v vim); export EDITOR=$VIM_PATH
fi
