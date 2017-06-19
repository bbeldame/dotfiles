export ZSH=/Users/bbeldame/.oh-my-zsh
export ANDROID_HOME=~/Library/Android/sdk
export PATH=/Users/bbeldame/Library/Android/sdk/tools/:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/bbeldame/Downloads/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/bbeldame/Downloads/google-cloud-sdk/path.zsh.inc'; fi

ZSH_THEME="miloshadzic"
plugins=(git)
source $ZSH/oh-my-zsh.sh
source ~/.hidrc

function cs() {
   cd $1
   ls
}

function kcgpg() {
   kubectl get pods | grep $1 | cut -d" " -f 1
}

function kcpfg() {
   kubectl port-forward `kcgpg $1 | head -n 1` $2 
}

function kclogsg() {
   kubectl logs -f `kcgpg $1 | head -n 1`

}

alias ali="vim ~/.zshrc"
alias alip="source ~/.zshrc"
alias delds="find ~/ -name \".DS_Store\" -delete"
alias csoyez="cs ~/Development/oyez"
alias csperso="cs ~/Development/perso"
alias cssdw="cs ~/Development/sdw"
alias cs42="cs ~/Development/42"
alias csrt="cs ~/Development/42/RT"
alias csmonop="cs ~/Development/oyez/monoprix"
alias rt="make re && ./rtv1 scenes/pluff.rtv1"
alias rtez="make re && ./rtv1 scenes/easy.rtv1"
alias p="pwd"
alias c="clear"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias pp="pwd | pbcopy"
alias updatedotfiles="sh ~/Development/perso/dotfiles/update.sh"
alias pulldotfiles="git -C ~/Development/perso/dotfiles pull && sh ~/Development/perso/dotfiles/install.sh && source ~/.zshrc"
alias statusdotfiles="git -C ~/Development/perso/dotfiles fetch"
alias ad="adb devices"
alias ar="adb reverse tcp:8081 tcp:8081"
alias ni="npm install"
alias rnra="react-native run-android"
alias cra="cordova run android"
alias cpaa="cordova platform add android"
alias ip="ifconfig | grep inet | grep broadcast | cut -d' ' -f2"
alias ipp="ip | pbcopy"
alias nls="ls-scripts"
alias yls="ls-scripts"
alias bodu="du -chd 1"
alias pubip="curl ipinfo.io/ip"
alias pubipp="pubip | pb"
alias pb="pbcopy"
alias kc="kubectl"
alias yt="yarn test"
alias yd="yarn dev"
alias ys="yarn start"
alias pls="sudo"
alias please="pls"
alias 42FC="sh ~/Development/42/42FileChecker/42FileChecker.sh"
source <(kubectl completion zsh)
alias gogojm="node index.js"
alias pullover="git stash && git pull && git stash pop"
alias kcpf="kc port-forward"
alias kcgp="kc get pods"
alias kcdp="kc describe pod"
