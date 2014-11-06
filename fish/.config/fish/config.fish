# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish
set -x FISH $HOME/.config/fish

# Add directories to PATH
set PATH $PATH $HOME/bin /usr/sbin/ /sbin /usr/local/sbin /home/vac/.gem/ruby/2.1.0/bin

. $FISH/env.fish

set fish_custom $HOME/.config/fish/custom
set fish_theme thume

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish

function fish_title
  echo (prompt_pwd)
end

function fish_user_key_bindings
  bind \cr percol_select_history
end

function pd
  cd (pro search $argv)
end

alias git hub

# Load aliases
if [ -f $HOME/.config/fish/aliases.fish ]
	. $HOME/.config/fish/aliases.fish    
end

# Load local aliases
if [ -f $HOME/.config/fish/localaliases.fish ]
	. $HOME/.config/fish/localaliases.fish    
end

# Fix ugly ls colors
set -Ux LS_COLORS "rs=0:di=01;34:ln=01;36:mh=00:pi=01;33:so=01;35:do=01;35:bd=01;33;:cd=01;33;:or=01;31;01:su=01;41:sg=01;43:ca=01;41:tw=01;34:ow=01;34:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lz=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=01;35:*.asf=01;35:*.rm=01;35:*.rmvb=01;35:*.flc=01;35:*.avi=01;35:*.fli=01;35:*.flv=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.yuv=01;35:*.cgm=01;35:*.emf=01;35:*.axv=01;35:*.anx=01;35:*.ogv=01;35:*.ogx=01;35:*.aac=00;36:*.au=00;36:*.flac=00;36:*.mid=00;36:*.midi=00;36:*.mka=00;36:*.mp3=00;36:*.mpc=00;36:*.ogg=00;36:*.ra=00;36:*.wav=00;36:*.axa=00;36:*.oga=00;36:*.spx=00;36:*.xspf=00;36:"
# ls
alias ls="ls --color=auto -hF"
alias l="ls"
alias ll="ls -lFh"
alias la="ls -A"
alias lla="ls -lFAh"
alias lal="ls -lFAh"
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
alias political_rap="while true; cat /home/vac/political | festival --tts; end"
alias deva="devmon -a"
alias devc="devmon -c"
alias hist="history | grep"
alias susp="sudo ip link set wlan0 down; sudo systemctl stop netctl-auto@wlan0.service; sudo systemctl suspend; sudo ip link set wlan0 up; sleep 1; sudo systemctl start netctl-auto@wlan0.service"
alias f="find ./ | grep -i"
alias wifi="sudo netctl-auto switch-to"
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

alias git="hub"
