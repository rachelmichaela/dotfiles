# Load everything from bashrc if Bash exists
if [ -n "$BASH_VERSION" ]; then
	if [ -f ~/.bashrc ]; then
		. ~/.bashrc
	fi
fi
