export ZSH=/Users/bbeldame/.oh-my-zsh
export ANDROID_HOME=~/Library/Android/sdk
export PATH=/Users/bbeldame/Library/Android/sdk/tools/:$PATH
ZSH_THEME="miloshadzic"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias ali="vim ~/.zshrc"
alias alip="source ~/.zshrc"
function cs() {
   cd $1
   ls
}
alias delds="find ~/ -name \".DS_Store\" -delete"

alias csoyez="cs ~/Development/oyez"
alias csperso="cs ~/Development/perso"
alias cssdw="cs ~/Development/sdw"
alias cs42="cs ~/Development/42"
alias csrt="cs ~/Development/42/RT"
alias rt="make re && ./rtv1 scenes/pluff.rtv1"
alias rtez="make re && ./rtv1 scenes/easy.rtv1"
alias pushconf="sh /Users/bbeldame/pushconfig.sh"
alias p="pwd"
alias c="clear"
alias glg="git log --graph --abbrev-commit --decorate --format=format:'%C(bold blue)%h%C(reset) - %C(bold cyan)%aD%C(reset) %C(bold green)(%ar)%C(reset)%C(bold yellow)%d%C(reset)%n''          %C(white)%s%C(reset) %C(dim white)- %an%C(reset)' --all"
alias pp=pwd | pbcopy
alias ok=echo "ok"
alias updatedotfiles="sh /Users/bbeldame/Development/perso/dotfiles/update.sh"
