alias gadd='f() {
	git add $@
	git status
	unset -f f;
}; f'
alias grmv='f() {
	git restore --staged $@
	git status
	unset -f f;
}; f'
alias gcmmt='f() {
	git commit -m "$1"
	git status
	unset -f f;
}; f'
alias gpull='f() {
	branchName=$(git rev-parse --abbrev-ref HEAD)
	git pull origin $branchName
	git status
	unset -f f;
}; f'
alias gpush='f() {
	branchName=$(git rev-parse --abbrev-ref HEAD)
	git push origin $branchName
	git status
	unset -f f;
}; f'
alias gbr='f() {
	if [ $# -ge 1 ]
	then
		git checkout $@
	else
		git checkout master
	unset -f f;
}; f'
alias myAliases='f() {
	gitAdd="gadd: para agregar archivos"
	gitRemove="grmv: para volver los archivos a estado de stagging"
	gitCommit="gcmmt: para hacer un commit pasando como parametro el mensaje de commit"
	gitPull="gpull: para hacer pull desde origin de la rama actual"
	gitPush="gpush: para hacer push de la rama actual hacia origin"
	gitBranch="gbr: para cambiar a rama master, o rama especificada por parametros, o crear una nueva rama anteponiendo '-b'"
	echo -e "$gitAdd \n$gitRemove \n$gitCommit \n$gitPull \n$gitPush \n$gitBranch"
	unset -f f;
}; f'