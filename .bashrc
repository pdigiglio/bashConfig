##
## The Idea behind the definition of these parameters is that you keep your git-folder
## containing all the files somewhere. Then you link the _only_ the `.bashrc` into your
## `${HOME}` directory and everything will be automatically loaded (after checking that
## files actually exist).
##
## @param configPath the path where configuration files are located.
configPath="${HOME}/bashConfig/"

## @param promptConf name of the file containing prompt configuration.
promptConf="${configPath}.prompt"
if [ -f "${promptConf}" ]
then
#	echo "Loading ${promptConf}"
	. ${promptConf}
fi

export PATH=~/bin:$PATH

alias ls="ls --color=auto --file-type --human-readable"
alias grep="grep --color=auto "

