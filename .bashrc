
## @param configPath the path where configuration files are located.
configPath="${HOME}/bashConfig/"

## Load prompt settings
promptConf="${configPath}.prompt"
if [ -f "${promptConf}" ]
then
#	echo "Loading ${promptConf}"
	. ${promptConf}
fi

export PATH=~/bin:$PATH

alias ls="ls --color=auto --file-type --human-readable"
alias grep="grep --color=auto "

