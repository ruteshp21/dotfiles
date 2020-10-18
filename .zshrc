export PATH="/usr/local/bin:$HOME/.gem/ruby/2.7.0/bin:$PATH"
export ZSH="$HOME/.oh-my-zsh"
export LS_COLORS="di=1:fi=0:ln=31:pi=5:so=5:bd=5:cd=5:or=31:mi=0:ex=36:*.rpm=90"

ZSH_THEME="spaceship"

plugins=(z sudo git zsh-syntax-highlighting zsh-autosuggestions spring gradle web-search extract history colored-man-pages npm docker)

source $ZSH/oh-my-zsh.sh


SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  package       # Package version
  node          # Node.js section
  xcode         # Xcode section
  docker        # Docker section
  aws           # Amazon Web Services section
  gcloud        # Google Cloud Platform section
  venv          # virtualenv section
  conda         # conda virtualenv section
  pyenv         # Pyenv section
  kubectl       # Kubectl context section
  terraform     # Terraform workspace section
  exec_time     # Execution time
  time          # Time stamps section
  line_sep      # Line break
  battery       # Battery level and status
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)

# User (user)
SPACESHIP_USER_SHOW=always  #Show user section (true, false, always or needed)
SPACESHIP_USER_PREFIX="with " 	#Prefix before user section
SPACESHIP_USER_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX 	#Suffix after user section
SPACESHIP_USER_COLOR=gray 	#Color of user section
SPACESHIP_USER_COLOR_ROOT=red 	#Color of user section when it's root

# Dir (dir)
SPACESHIP_DIR_SHOW=true 	#Show directory section
SPACESHIP_DIR_PREFIX=in     #Prefix before current directory
SPACESHIP_DIR_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX   #Suffix after current directory
SPACESHIP_DIR_TRUNC=3 	#Number of folders of cwd to show in prompt, 0 to show all
#SPACESHIP_DIR_TRUNC_PREFIX 		#Prefix before cwd when it's truncated. For example …/ or .../, empty to disable
SPACESHIP_DIR_TRUNC_REPO=false 	#While in git repo, show only root directory and folders inside it
SPACESHIP_DIR_COLOR=blue 	#Color of directory section
SPACESHIP_DIR_LOCK_SYMBOL= 	#The symbol displayed if directory is write-protected (requires powerline patched font)
SPACESHIP_DIR_LOCK_COLOR=red 	#Color for the lock symbol

# Hostname (host)
SPACESHIP_HOST_SHOW=true 	#Show host section (true, false or always)
SPACESHIP_HOST_SHOW_FULL=false 	#Show full hostname section (true, false)
SPACESHIP_HOST_PREFIX=at 	#Prefix before the connected SSH machine name
SPACESHIP_HOST_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX 	#Suffix after the connected SSH machine name
SPACESHIP_HOST_COLOR=blue 	#Color of host section
SPACESHIP_HOST_COLOR_SSH=green 	#Color of host in SSH connection

# Time (time)
SPACESHIP_TIME_SHOW=true    #Show time (set to true for enabling)
SPACESHIP_TIME_PREFIX="at "   	#Prefix before time section
SPACESHIP_TIME_SUFFIX=$SPACESHIP_PROMPT_DEFAULT_SUFFIX 	#Suffix after time section
SPACESHIP_TIME_COLOR=red 	#Color of time section
SPACESHIP_TIME_FORMAT=false 	#Custom date formatting ZSH date formats
SPACESHIP_TIME_12HR=true 	#Format time using 12-hour clock (am/pm)

## common aliases
alias hello="echo Hello World"
alias zshrc="nano $HOME/.zshrc"
alias update="source $HOME/.zshrc"
alias myip="curl http://ipecho.net/plain; echo"
alias dirs='dirs -v | head -10'
alias usage='du -h -d1'
alias sshdir="cd ~/.ssh"
alias runp="lsof -i "
alias md="mkdir "
alias ll='colorls -lA --sd --group-directories-first'
alias ls='colorls --group-directories-first'
alias ..='cd ..'
alias ...='cd ../..'

## git aliases
function gc { git commit -m "$@"; }
alias gcm="git checkout master";
alias gs="git status";
alias gpull="git pull";
alias gf="git fetch";
alias gfa="git fetch --all";
alias gf="git fetch origin";
alias gpush="git push";
alias gd="git diff";
alias ga="git add .";
alias gb="git branch";
alias gbr="git branch remote"
alias gfr="git remote update"
alias gbn="git checkout -B "
alias grf="git reflog";
alias grh="git reset HEAD~" # last commit
alias gac="git add . && git commit -a -m "
alias gsu="git gpush --set-upstream origin "
alias glog="git log --color --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --branches"

## npm aliases
alias ni="npm install";
alias nrs="npm run start -s --";
alias nrb="npm run build -s --";
alias nrd="npm run dev -s --";
alias nrt="npm run test -s --";
alias nrtw="npm run test:watch -s --";
alias nrv="npm run validate -s --";
alias rmn="rm -rf node_modules";
alias flush-npm="rm -rf node_modules && npm i && echo NPM is done";

## docker aliases
alias dockerstop='docker-compose stop'
alias dockerrestart='docker-compose restart'
alias dockerup='docker-compose up -d'
alias dockerrm='docker-compose rm --all'
alias dockerbuild='docker-compose build'
