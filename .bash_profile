
# Setting PATH for Python 3.7
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.7/bin:${PATH}"
export PATH

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

ME_EMOJI=(🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐵 🐛);
RANDOM_ME_EMOJI=${ME_EMOJI[$((RANDOM%13))]};
export PS1="\h:\W $RANDOM_ME_EMOJI ";

alias gl='git log --all --decorate --graph --pretty=format:"%C(yellow)%h%Creset %C(auto)%d%Creset %Cblue%ar%Creset %Cred%an%Creset %n%w(72,1,2)%s"'
alias gs='git status'
alias glb='git checkout @{-1}'
alias work='cd ~/work'
alias pf='cd ~/work/novant/physician-finder'
alias run='npm run dev'
alias temp='cd ~/temp'
alias deployStaging='AWS_PROFILE=novant_test aws codepipeline start-pipeline-execution --name nh-physician-finder-static-development'
alias grm='git rebase master'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export GOPATH=/Users/akim/go
export PATH=$GOPATH/bin:$PATH
mcd () {
  mkdir -p $1
  cd $1
}
gp () {
  local branch=$(git rev-parse --abbrev-ref HEAD)
  git push origin $branch
}
gpf () {
  branch=$(git rev-parse --abbrev-ref HEAD)
  git push origin $branch -f
}

fb () { 
  cd ~/Desktop/decisionblue-development/MainSite/app/
}

repos () {
  cd ~/Desktop/repos
}
