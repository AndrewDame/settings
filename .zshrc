# Delclaration and functions for prompt
commits () {
	COMMIT_COMPARE=$(eval "git rev-list --left-right origin/main...HEAD --count 2> /dev/null")
	if [ -n "${COMMIT_COMPARE}" ];    
		then
			IFS='	'
			read -A array <<< "$COMMIT_COMPARE"
			echo " %B%F{green}origin/main:%B%F{yellow}-${array[1]}+${array[2]} "
		else
			echo ""
	fi
}

current_branch () {
	CURRENT_BRANCH=$(eval "git rev-parse --abbrev-ref HEAD 2> /dev/null")
	echo " $CURRENT_BRANCH"
}


EMOJI_LIST=(🐶 🐱 🐭 🐹 🐰 🦊 🐻 🐼 🐨 🐯 🦁 🐮 🐵 🐛);
RANDOM_EMOJI=${EMOJI_LIST[$((RANDOM%13))]};
export PROMPT='%B%F{green}%~%B%F{blue}$(current_branch)$(commits)%B%F{white}$RANDOM_EMOJI ';
setopt PROMPT_SUBST
export CLICOLOR=1
export LSCOLORS="cxbxcxdxbxegedabagacad"
# Shell aliases 
alias gl='git log --graph --decorate' 
alias gs='git status'
alias glb='git checkout @{-1}'
alias grm='git rebase main'
alias gf="git fetch --all"
alias zconfig="vim ~/.zshrc"
alias repos="cd ~/Desktop/repos"
alias desk="cd ~/Desktop"

gp () {
 	local branch=$(git rev-parse --abbrev-ref HEAD)
 	git push origin $branch
}
gpf () {
 	branch=$(git rev-parse --abbrev-ref HEAD)
 	git push origin $branch -f
}

dbranch () {
	CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD 2> /dev/null)
	git checkout main
	git branch -D $CURRENT_BRANCH
}
