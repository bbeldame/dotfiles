export ZSH=/Users/admin/.oh-my-zsh

ZSH_THEME="miloshadzic"
plugins=(git)
source $ZSH/oh-my-zsh.sh


function cs() {
   cd $1
   ls
}

function fastpush() {
   pullover
   yarn test -- -u
   git add .
   git commit -m $1
   git push
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

function kcgorec() {
   kubectl config set-context ninja-rec --cluster=gke_monoprix-ninja-rec_europe-west1-d_master --user=gke_monoprix-ninja-rec_europe-west1-d_master --namespace=gta
   kubectl config use-context ninja-rec
}

function kcgopreprod() {
   kubectl config set-context ninja-preprod --cluster=gke_monoprix-ninja-preprod_europe-west1-d_master --user=gke_monoprix-ninja-preprod_europe-west1-d_master --namespace=ninja
   kubectl config use-context ninja-preprod
}

function kcgodev() {
   kubectl config set-context ninja-dev --cluster=gke_monoprix-ninja-dev_europe-west1-d_master --user=gke_monoprix-ninja-dev_europe-west1-d_master --namespace=gta
   kubectl config use-context ninja-dev
}

function kcgopreprod() {
   kubectl config set-context ninja-preprod --cluster=gke_monoprix-ninja-preprod_europe-west1-d_master --user=gke_monoprix-ninja-preprod_europe-west1-d_master --namespace=gta
   kubectl config use-context ninja-preprod
}

function kcgetport() {
   kubectl describe pod $1 | grep Port:
}

function portki() {
   sudo lsof -i tcp:$1
}

function kcchangenamespace() {
   echo "kubectl config set-context $(kubectl config current-context) --namespace=<insert-namespace-name-here>"
   kubectl config set-context $(kubectl config current-context) --namespace=$1
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
alias cssb="cs ~/Development/perso/sandbox"
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
alias gogojm="node index.js"
alias pullover="git stash && git pull && git stash pop"
alias kcpf="kc port-forward"
alias kcgp="kcwhere ; kc get pods"
alias kcdp="kc describe pod"
alias weather="curl wttr.in"
alias al="adb logcat"
alias yaren="yarn"
alias autoad="sh ~/Development/oyez/autoad.sh"
alias door="sh ~/Development/perso/door.sh"
alias loopdoor="sh ~/Development/perso/loopdoor.sh"
alias sf="screenfetch -E"
alias mr="make re"
alias mf="make fclean"
alias rs="echo fail"
alias kcwhere="kc config get-contexts | grep \"*\""
alias rnd="adb shell input keyevent KEYCODE_MENU"
alias es="elasticsearch"
alias gds="git diff --staged"
alias ngrok="~/Downloads/ngrok"
alias csfiles="cs ~/Development/http/files"
alias gc="gcloud"
alias kibana="/usr/local/Cellar/kibana@5.6/5.6.5/bin/kibana"
alias asmcor="~/Development/42/vm_champs/asm"
alias kclf="kc logs -f"
alias devopspush="git pull --rebase origin master && git pull --rebase origin auto-deploy && git pull --rebase origin master && git push"
export PATH="/usr/local/opt/postgresql@9.6/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/admin/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/admin/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/admin/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/admin/google-cloud-sdk/completion.zsh.inc'; fi
