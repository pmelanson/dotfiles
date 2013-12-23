# ls
alias ls="ls --color=auto -hF"
alias l="ls"
alias ll="ls -lFh"
alias la="ls -A"
alias lx="ll -BX"
alias lzr="ll -S"
alias lz="ll -rS"
alias lt="ll -rt"
alias lm="ll -A | less"

# modified commands
alias utarg="tar -zvxf"
alias utarb="tar -xvjf"
alias make="make -j6"
alias ..="cd .."
alias mkdir="mkdir -pv"
alias du="du -h"

# new commands
alias hist="history | grep"
alias susp="sudo pm-suspend && xlock -mode matrix"
alias f="find ./ | grep -i"
alias back="feh --bg-fill \"$(find /home/vac/Pictures/wallpapers/|shuf -n1)\""
alias wifi="sudo netctl switch-to"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# safety
alias rm="rm --preserve-root -Iv"
alias cp="cp -iv"
alias mv="mv -i"
alias ln='ln -i'
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias cls=' echo -ne "\033c"'       # clear screen for real (it does not work in Terminology)

# pacman
alias pac="sudo /usr/bin/pacman -S"		# default action	- install one or more packages
alias pacu="sudo /usr/bin/pacman -Syu"		# '[u]pdate'		- upgrade all packages to their newest version
alias pacr="sudo /usr/bin/pacman -Rs"		# '[r]emove'		- uninstall one or more packages
alias pacs="sudo /usr/bin/pacman -Ss"		# '[s]earch'		- search for a package using one or more keywords
alias paci="sudo /usr/bin/pacman -Si"		# '[i]nfo'		- show information about a package
alias paclo="sudo /usr/bin/pacman -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
alias pacc="sudo /usr/bin/pacman -Scc"		# '[c]lean cache'	- delete all not currently installed package files
alias paclf="sudo /usr/bin/pacman -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
alias pacexpl="/usr/bin/pacman -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed 
alias pacimpl="/usr/bin/pacman -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

# aura
alias aur="sudo aura -A"		# default action	- install one or more packages
alias auru="sudo aura -Ayu"		# '[u]pdate'		- upgrade all packages to their newest version
alias aurr="sudo aura -Rs"		# '[r]emove'		- uninstall one or more packages
alias aurs="sudo aura -Ss"		# '[s]earch'		- search for a package using one or more keywords
alias auri="sudo aura -Ai"		# '[i]nfo'		- show information about a package
alias aurlo="sudo aura -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
alias aurc="sudo aura -Scc"		# '[c]lean cache'	- delete all not currently installed package files
alias aurlf="sudo aura -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
alias aurexpl="aura -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed 
alias aurimpl="aura -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

