# $Id: header,v 1.1 2003/08/26 13:54:53 leon Exp $
# $Revision: 1.1 $
# $Author: leon $
# $Date: 2003/08/26 13:54:53 $
#
# zshrc - configuration file for zsh shell
#
# Copyright (c) 2003 Leszek 'leafnode' Krupinski <leafnode@pld-linux.org>
#
# Full GPL License: <http://www.gnu.org/licenses/gpl.txt>
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA

zshrc_load_status () {
  # \e[0K is clear to right
  if [[ -n "$ZSH_LOAD_STATUS_DEBUG" ]]; then
      echo ".zshrc load: $* ... \e[0K"
  else
      echo -n "\r.zshrc load: $* ... \e[0K"
  fi
}

################################################################################
## Prompt
################################################################################

zshrc_load_status 'setting prompt'

PS1="%{`tput setaf 2`%}%n%{`tput setaf 6`%}@%{`tput setaf 5`%}%m%{`tput setaf 2`%}:%{`tput setaf 6`%}%~ %\:>%{`tput setaf 9`%} "

unset RPS1

autoload -U promptinit && promptinit

# if [ "$FVWM_MINISHELL" = "1" ]; then
#    PS1="`tput setaf 2`$`tput setaf 7` "
# fi
# 

# PS1="%n@%m:%~ %# "

zshrc_load_status 'vcs_info prompt'
setopt prompt_subst
autoload colors    
colors             

autoload -Uz vcs_info

# set some colors
for COLOR in RED GREEN YELLOW WHITE BLACK CYAN; do
    eval PR_$COLOR='%{$fg[${(L)COLOR}]%}'         
    eval PR_BRIGHT_$COLOR='%{$fg_bold[${(L)COLOR}]%}'
done                                                 
PR_RESET="%{${reset_color}%}";                       
# # set formats
# # %b - branchname
# # %u - unstagedstr (see below)
# # %c - stangedstr (see below)
# # %a - action (e.g. rebase-i)
# # %R - repository path
# # %S - path in the repository
# FMT_BRANCH="${PR_GREEN}%b%u%c${PR_RESET}" # e.g. master¹²
# FMT_ACTION="(${PR_CYAN}%a${PR_RESET}%)"   # e.g. (rebase-i)
# FMT_PATH="%R${PR_YELLOW}/%S"              # e.g. ~/repo/subdir
# 
# # check-for-changes can be really slow.
# # you should disable it, if you work with large repositories    
# zstyle ':vcs_info:*:prompt:*' check-for-changes true
# zstyle ':vcs_info:*:prompt:*' unstagedstr '¹'  # display ¹ if there are unstaged changes
# zstyle ':vcs_info:*:prompt:*' stagedstr '²'    # display ² if there are staged changes
# zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}//" "${FMT_PATH}"
# zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}//"              "${FMT_PATH}"
# zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "%~"         
# 
# function precmd {       
#     vcs_info 'prompt'          
# }                              
# 
# function lprompt {
#     local brackets=$1
#     local color1=$2  
#     local color2=$3  
#                      
#     local bracket_open="${color1}${brackets[1]}${PR_RESET}"
#     local bracket_close="${color1}${brackets[2]}"          
#                                                              
#     local git='$vcs_info_msg_0_'                           
#     local cwd="${color2}%B%1~%b"
# 
#     PROMPT="${PR_RESET}${bracket_open}${git}${cwd}${bracket_close}%# ${PR_RESET}"
# }                                                                                        
# 
# function rprompt {
#     local brackets=$1
#     local color1=$2  
#     local color2=$3  
#                      
#     local bracket_open="${color1}${brackets[1]}${PR_RESET}"
#     local bracket_close="${color1}${brackets[2]}${PR_RESET}"
#     local colon="${color1}:"                                
#     local at="${color1}@${PR_RESET}"                        
#                                                             
#     local user_host="${color2}%n${at}${color2}%m"                    
#     local vcs_cwd='${${vcs_info_msg_1_%%.}/$HOME/~}'        
#     local cwd="${color2}%B%20<..<${vcs_cwd}%<<%b"
#     local inner="${user_host}${colon}${cwd}"
# 
#     RPROMPT="${PR_RESET}${bracket_open}${inner}${bracket_close}${PR_RESET}"
# }
# 
# lprompt '[]' $BR_BRIGHT_BLACK $PR_WHITE
# rprompt '()' $BR_BRIGHT_BLACK $PR_WHITE

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stangedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
FMT_BRANCH="${PR_GREEN}%s::%b%u%c${PR_RESET}" # e.g. master¹²
FMT_ACTION="(${PR_CYAN}%a${PR_RESET}%)"   # e.g. (rebase-i)
FMT_PATH="%R${PR_YELLOW}/%S"              # e.g. ~/repo/subdir

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true
zstyle ':vcs_info:*:prompt:*' unstagedstr '¹'  # display ¹ if there are unstaged changes
zstyle ':vcs_info:*:prompt:*' stagedstr '²'    # display ² if there are staged changes
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}//" "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"              "${FMT_PATH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""                             "%~"


function precmd {
    vcs_info 'prompt'
}

function rprompt {
    local brackets=$1
    local color1=$2
    local color2=$3

    local bracket_open="${color1}${brackets[1]}${PR_RESET}"
    local bracket_close="${color1}${brackets[2]}${PR_RESET}"
    local colon="${color1}:"
    local at="${color1}@${PR_RESET}"

    local user_host="${color2}%n${at}${color2}%m"
    local vcs_cwd='${${vcs_info_msg_1_%%.}/$HOME/~}'
    local cwd="${color2}%B%20<..<${vcs_cwd}%<<%b"
    local inner=""
    local git='$vcs_info_msg_0_'

        RPROMPT="${PR_RESET}${bracket_open}${inner}${git}${bracket_close}${PR_RESET}"
}

rprompt '  ' $BR_BRIGHT_BLACK $PR_WHITE

################################################################################
## Aliases
################################################################################

zshrc_load_status 'setting aliases'

if [ -x /usr/bin/host-nikhof ]
then
   alias host="host-nikhof"
fi

if [ -x /usr/bin/links2 ]
then
   alias links="links2"
fi

# editor

alias e='vim'
alias v='vim'
alias vi='vim'
# alias gvim='gvim.gnome'

# ls

if [ "x`uname`" = "xDarwin" ]
then
   alias ls='ls -G'
else
   alias ls='ls --color=auto'
fi
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lla='ls -la'

# manual

alias man='pinfo -m'
alias info='pinfo'

# mounting

# alias c+='mount /dev/cdrom'
# alias c-='umount /mnt/cdrom'
# alias d+='mount /dev/cdrom2'
# alias d-='umount /mnt/cdrom2'
# alias f+='mount /mnt/floppy'
# alias fm='mount -t vfat /dev/fd0 /mnt/floppy'
# alias f-='umount /mnt/floppy'

alias lftp='nocorrect lftp'
alias ftp='lftp'
#alias ekg='ekg -f ncurses -c /tmp/ekg-$USER'
#alias vim='vim.ispell'
alias mv='nocorrect mv'       # no spelling correction on mv
alias cp='nocorrect cp'       # no spelling correction on cp
alias mkdir='nocorrect mkdir' # no spelling correction on mkdir
alias c='reset;clear'
#alias mud='telnet 156.17.39.80 4000'
#alias ..='cd ..'
alias cal='cal -m'
alias wget='wget -c -t 0'
alias ocd='cd $OLDPWD'
alias czysc='tidy -m -i -wrap 9999 -raw'
#alias wafel='slrn -f .ubiknewsrc -h ubik.melog.com.pl'
#alias irssi6='irssi -c 2001:6e0:208:0:204:76ff:fe23:2024 -n leaf\|v6'
#alias tex='mex --translate-file=il2-pl'
#alias mex='mex --translate-file=il2-pl'
alias hnb='hnb.lock'
alias grep='grep --color=auto'

# poldek

if [ "$HOSTNAME" = "ubik" -o "$HOSTNAME" = "server" ]
then
   alias poldek='poldek -v --sn ra-i686 --sn ra-i686-sec --sn ra-i686-gen'
else
   alias poldek='poldek -v'
fi


################################################################################
## Environment
################################################################################

zshrc_load_status 'setting environment'

export RUBYOPT=rubygems
export CONFIG_DIR='etc'
export HOME_ETC="$HOME/$CONFIG_DIR"
export HOSTNAME=`/bin/hostname`
export CVS_RSH='ssh'
export EDITOR='vim'
export SCREENDIR="$HOME/tmp/screen"
export PATH="$PATH:/usr/X11R6/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/games"
path=($path $HOME/bin:/usr/local/bin)
export HISTFILE="$HOME/.history"
export HISTSIZE="10000"
export SAVEHIST="10000"
export LS_COLORS="no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;3:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:"

################################################################################
## Locale
################################################################################

zshrc_load_status 'setting locale'

export LC_MESSAGES=C

if [ "x$LANG" = "x" ]
then
   unset LC_ALL
   export LC_CTYPE=pl_PL
   export LC_TIME=pl_PL
   export LC_MONETARY=pl_PL
   export LC_MEASUREMENT=pl_PL
   export LC_MESSAGES=C
   export LANGUAGE=pl
   export LANG=pl_PL
fi

################################################################################
## Completion
################################################################################

zshrc_load_status 'setting up completion'

autoload -U compinit
compinit

autoload -U incremental-complete-word
zle -C complete complete-word complete-file
zle -N incremental-complete-word

## Błedy, ostrzezenia, korekty, opisy.
zstyle ':completion:*' verbose yes
zstyle ':completion:*:descriptions' format $'%{\e[1;33m%}%d%{\e[0m%}'
zstyle ':completion:*:messages' format $'%{\e[1;33m%}%d%{\e[0m%}'
zstyle ':completion:*:warnings' format $'%{\e[1;33m%}No matches for: %d%{\e[0m%}'
zstyle ':completion:*:corrections' format $'%{\e[1;33m%}%d (errors: %e)%{\e[0m%}'

## Kolorowe dopełnianie
if [ "x`uname`" != "xDarwin" ]
then
   eval $(dircolors)
   zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
fi

### Wybieranie dopełnienia za pomocą kursora
#setopt menucomplete
#zstyle ':completion:*' menu select=long-list select=1

zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:rm:*' ignore-line yes
zstyle ':completion:*' group-name
zstyle ':completion:*' file-sort name
zstyle ':completion:*:*:-subscript-:*' tag-order indexes parameters
zstyle ':completion:*:expand:*' tag-order all-expansions
zstyle ':completion:*:functions' ignored-patterns '_*'
zstyle ':completion:*:complete:-command-::commands' ignored-patterns '*\~'
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.(o|c~|old|pro|zwc)'
zstyle ':completion:*:*:(^rm):*:*files' ignored-patterns '*?.o' '*?.c~''*?.old' '*?.pro'
zstyle ':completion:*' expand 'yes'
zstyle ':completion:*' squeeze-slashes 'yes'

## case-insensitive (uppercase from lowercase) completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

## case-insensitive (all) completion
#zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

## case-insensitive,partial-word and then substring completion
#zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*

## completion caching
zstyle ':completion::complete:*' use-cache 1
zstyle ':completion::complete:*' cache-path ~/.zcompcache/$HOST

# complete hostnames out of ssh's ~/.ssh/known_hosts
zstyle ':completion:*' use-cache on
zstyle ':completion:*' users resolve

# ssh hosts
#sshhosts=(xxx)
#scphosts=(xxx: yyy:)
#compctl -k sshhosts ssh
#compctl -/ -f -k scphosts scp

# ftp hosts
# ftphosts=(sunsite.icm.edu.pl ftp.pld-linux.org ftp.nest.pld-linux.org)
# compctl -k ftphosts ftp

# www hosts
# wwwhosts=(www.xxx.pl www.yyy.pl)
# compctl -k wwwhosts -/ -f -g '*.html(r)' lynx links glinks

# cvs commands
#cvscommands=(add admin annotate checkout commit diff edit editors export history import init log login logout rdiff diff release remove rtag status tag unedit update watch watchers)
#compctl -k cvscommands -f cvs

# compressors
#compctl -g '*.gz' + -f gunzip
#compctl -g '*.bz2' + -f bunzip2

# make rules
#compctl -s "\$(awk '/^[a-zA-Z0-9][^     ]+:/ {print \$1}' FS=: [mM]akefile)" \
#	-x 'c[-1,-f]' -f -- make gmake pmake

# system groups
# groups=( ${${(s: :)$(</etc/group)}%%:*} )
# compctl -s '$(groups)' + -k groups newgrp
# compctl -f -x 'p[1], p[2] C[-1,-*]' -u -q -- passwd
# 
# compctl -f -x 'p[1], p[2] C[-1,-*]' -k groups -- chgrp
# compctl -f -x 'p[1] n[-1,.], p[2] C[-1,-*] n[-1,.]' -k groups - \
# 	'p[1], p[2] C[-1,-*]' -u -S '.' -q -- chown

################################################################################
## Bindings
################################################################################

zshrc_load_status 'setting up bindings'

bindkey "^[[3~"   delete-char		# xterm
bindkey "^[[1~"   beginning-of-line	# Linux console
bindkey "^[OH"    beginning-of-line	# xterm
bindkey "^[[H"    beginning-of-line	# xterm
bindkey "^[[4~"   end-of-line		# Linux console
bindkey "^[OF"    end-of-line		# xterm
bindkey "^[[F"    end-of-line		# xterm
bindkey "\M\b" 	  backward-delete-word	# xterm
bindkey "^[[5D"   backward-word		# xterm
bindkey "^[[5C"   forward-word		# xterm
bindkey "˙"	  backward-delete-word	# xterm (silly)
bindkey "^[[3;3~" delete-word           # xterm
bindkey "^[[1;5D" backward-word		# xterm XFree86 4.3
bindkey "^[[1;5C" forward-word		# xterm XFree86 4.3
bindkey "^[O5D"   backward-word		# screen
bindkey "^[O5C"   forward-word		# screen
bindkey "^[[7~"	  beginning-of-line	# aterm
bindkey "^[[8~"	  end-of-line		# aterm
bindkey "^[Od"	  backward-word		# aterm
bindkey "^[Oc"	  forward-word		# aterm
bindkey "^[^[[3~" delete-word		# aterm

bindkey "^[[5~" up-line-or-search
bindkey "^[[6~" down-line-or-search

# terminal settings

zshrc_load_status 'setting up terminal'

# if [ "$TERM" = "xterm" ]; then
#   export TERM='linux'
# fi

if [ "$TERM" = "vt220" -o "$TERM" = "vt100" ]; then
  export TERM='xterm-color'
fi

zshrc_load_status 'setting up limits'

ulimit -c 5120 2> /dev/null

zshrc_load_status 'setting zsh options'

# zsh options
setopt correctall
setopt noautolist
setopt bashautolist
setopt listtypes
setopt listpacked
setopt autocd
setopt automenu
setopt extendedhistory
setopt extendedglob
setopt nolistbeep
setopt allexport
setopt prompt_subst

# Some terminals require this - uncomment if you like

#echo -ne '\033(K'

# Functions

zshrc_load_status 'setting up functions'

setenv() { export $1=$2 }  # csh compatibility

# chpwd()
# {
#    [[ -t 1 ]] || return
#       case $TERM in
#       sun-cmd) print -Pn "\e]l%~\e\\"
#       ;;
#    *xterm*|rxvt|(dt|k|E)term) print -Pn "\e]2;%~\a"
#       ;;
#    esac
# }
# 
# maketitle()
# {
#    if [ $# -lt 1 ]
#    then
#       exit 1
#    fi
#    
#    if `echo $TERM | grep -qi xterm`
#    then
#       XTERMTITLE="\[\033]0;$*\007\]"
#    fi
# }
# 
# settitle()
# {
#    if [ $# -lt 1 ]
#    then
#       exit 1
#    fi
# 
#    if `echo $TERM | grep -qi xterm`
#    then
#       maketitle $*
#       echo -n -e $XTERMTITLE
#    fi
#    
# }
# 

. ~/.zshrc_private

