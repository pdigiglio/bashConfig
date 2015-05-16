##
## The Idea behind the definition of these parameters is that you keep your git-folder
## containing all the files somewhere. Then you link the _only_ the `.bashrc` into your
## `${HOME}` directory and everything will be automatically loaded (after checking that
## files actually exist).
##
## @param configPath the path where configuration files are located.
configPath="${HOME}/bashConfig/"

##
## @brief Print an error when a file is not found
##
function errorPrint {
	echo -e "Error: cannot find $1"
}

##
## @brief Print an error when a file is not found
##
function successPrint {
	echo -e ".bashrc: loaded file $1"
}

## @param promptConf name of the file containing prompt configuration.
promptConf="${configPath}.prompt"
if [ -f "${promptConf}" ]
then
	. ${promptConf}
	successPrint ${promptConf}
else
	errorPrint ${promptConf}
fi

export PATH=~/bin:$PATH

alias ls="ls --color=auto --file-type --human-readable"
alias grep="grep --color=auto "

