# ES
_countfields() {
	jq '..|.type?|select(.!=null)' < $1 | wc -l
}
alias countfields="_countfields"

# IDE
idea() {
	open $1 -a intellij\ idea
}

pycharm() {
	open $1 -a pycharm
}

# CRDB
crdb() {
	newt --app-type secure-db-proxy -- -s 9878:postgres://$1.us-east-1.test
}

# dgwcontrol
jqns() {
    jq ".namespaces | .[] | select(.namespace_name == \"$1\")"
}
jqls() {
    jq -r ".namespaces | .[] | .namespace_name"
}

IPYTHON_FLAGS="--InteractiveShellApp.extensions autoreload --InteractiveShellApp.exec_lines '%autoreload 2'"

# antigravity
ag_ipython() {
    export ANTIGRAVITY_SHARD=$1 ANTIGRAVITY_CREDS=dev 
    eval docker-compose run --rm antigravity ipython $IPYTHON_FLAGS
}

# poetry
alias pshell='. $(poetry env info --path)/bin/activate'
