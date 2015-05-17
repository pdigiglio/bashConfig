
# @file .bashrc
#
# @brief The `.bashrc` file.
#
# @par
# The Idea behind the definition of these parameters is that you keep your git-folder
# containing all the files somewhere. Then you link the _only_ the `.bashrc` into your
# `${HOME}` directory and everything will be automatically loaded (after checking that
# files actually exist).
# 

# @param configPath the path where configuration files are located.
configPath="${HOME}/bashConfig/"

# Source `.colors`
. "${configPath}.colors"

#
# @fn errorPrint
# 
# @brief Print an error when a file is not found.
# 
# @param $1 name of the file which is not found.
errorPrint () {
	echo -e "From file ${Green}.bashrc${Color_Off}"
	echo -e " >> ${BRed}Error!${Color_Off} Cannot find ${Blue}$1${Color_Off}"
}

##
## @fn successPrint
##
## @brief Print message upon successful loaded file.
##
## @param $1 name of the file which has been loaded.
successPrint () {
	echo -e "From file ${Green}.bashrc${Color_Off}"
	echo -e " >> Loaded file ${Blue}$1${Color_Off}"
}
##
## @fn sourceFile
## @brief Function to source a file into `.bashrc`.
## @param $1 file to `source`
sourceFile () {
	if [ -f "$1" ]
	then
		. $1
		successPrint $1
	else
		errorPrint $1
	fi
}

# @param promptConf name of the file containing prompt configuration.
promptConf="${configPath}.prompt"
sourceFile $promptConf

export PATH=~/bin:$PATH

alias ls="ls --color=auto --file-type --human-readable"
alias grep="grep --color=auto "

# bash options

# Correct dir spellings
shopt -q -s cdspell
 
# Make sure display get updated when terminal window get resized
shopt -q -s checkwinsize
 
# Turn on the extended pattern matching features 
shopt -q -s extglob
 
# Append rather than overwrite history on exit
shopt -s histappend
 
# Make multi-line commandsline in history
shopt -q -s cmdhist 
 
# Get immediate notification of background job termination
set -o notify 
 
# Disable [CTRL-D] which is used to exit the shell
set -o ignoreeof
 
# Disable core files
ulimit -S -c 0 > /dev/null 2>&1
