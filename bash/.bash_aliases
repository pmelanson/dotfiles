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
alias feh="feh -z. -S mtime --reverse"
alias utarg="tar -zvxf"
alias utarb="tar -xvjf"
alias make="make -j6"
alias ..="cd .."
alias mkdir="mkdir -pv"
alias df="df -h"
alias du="du -h"
alias pacman="powerpill"

# new commands
alias political_rap="while true; do cat /home/vac/political | festival --tts; done"
alias deva="devmon -a"
alias devc="devmon -c"
alias hist="history | grep"
alias susp="sudo systemctl suspend"
alias f="find ./ | grep -i"
alias wifi="sudo netctl-auto switch-to"
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'
alias testnet="ping 8.8.8.8"
alias udl-orch="youtube-dl -x --audio-quality 0 -o '~/Music/orchestral/%(title)s.%(ext)s'"
alias udl-misc="youtube-dl -x --audio-quality 0 -o '~/Music/misc/%(title)s.%(ext)s'"
alias klog="cat ~/.config/unity3d/Squad/Kerbal\ Space\ Program/Player.log"

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
alias aur="aura -A"		# default action	- install one or more packages
alias auru="aura -Ayu"		# '[u]pdate'		- upgrade all packages to their newest version
alias aurr="aura -Rs"		# '[r]emove'		- uninstall one or more packages
alias aurs="aura -Ss"		# '[s]earch'		- search for a package using one or more keywords
alias auri="aura -Ai"		# '[i]nfo'		- show information about a package
alias aurlo="aura -Qdt"		# '[l]ist [o]rphans'	- list all packages which are orphaned
alias aurc="aura -Scc"		# '[c]lean cache'	- delete all not currently installed package files
alias aurlf="aura -Ql"		# '[l]ist [f]iles'	- list all files installed by a given package
alias aurexpl="aura -D --asexp"	# 'mark as [expl]icit'	- mark one or more packages as explicitly installed 
alias aurimpl="aura -D --asdep"	# 'mark as [impl]icit'	- mark one or more packages as non explicitly installed

# yaourt
alias ya="/usr/bin/yaourt -S"		# default action	- install one or more yakages
alias yau="/usr/bin/yaourt -Syu"	# '[u]pdate'		- upgrade all yakages to their newest version
alias yar="/usr/bin/yaourt -Rs"		# '[r]emove'		- uninstall one or more yakages
alias yas="/usr/bin/yaourt -Ss"		# '[s]earch'		- search for a yakage using one or more keywords
alias yai="/usr/bin/yaourt -Si"		# '[i]nfo'		- show information about a yakage
alias yalo="/usr/bin/yaourt -Qdt"	# '[l]ist [o]rphans'	- list all yakages which are orphaned
alias yac="/usr/bin/yaourt -Scc"	# '[c]lean cache'	- delete all not currently installed yakage files
alias yalf="/usr/bin/yaourt -Ql"	# '[l]ist [f]iles'	- list all files installed by a given yakage
alias yaexpl="/usr/bin/yaourt -D --asexp"	# 'mark as [expl]icit'	- mark one or more yakages as explicitly installed 
alias yaimpl="/usr/bin/yaourt -D --asdep"	# 'mark as [impl]icit'	- mark one or more yakages as non explicitly installed
alias yaq="/usr/bin/yaourt -Qn"
