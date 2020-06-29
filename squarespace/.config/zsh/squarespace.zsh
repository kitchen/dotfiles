if [[ -d $HOME/squarespace ]]; then
	antigen bundle gradle

	export PATH=$PATH:$HOME/squarespace/kubectl-plugins/

	# operator-sdk doesn't like KUBECONFIG to have multiple files in it, so let's not do that for now
	#export KUBECONFIG=$KUBECONFIG:$HOME/.kube/config:$HOME/.kube/config.squarespace

	function kube-refresh-token() {
		curl -sS --user "$USER:$(security find-generic-password -a $USER -s squarespaceldap -w)" -o ~/.kube/config.squarespace.new https://kubeconfig-generator.squarespace.net
		if [[ $? -eq 0 ]]; then
			mv ~/.kube/config.squarespace.new ~/.kube/config
			echo "kube config refreshed!"
		else
			echo "error fetching new kube config, see ~/.kube/config.squarespace.new for possibly more info :shrug:"
		fi
	}

	# TODO figure out how best to move the sqsp specific kubecontext classes back to here.
	# TODO there's something similar for terraform workspaces too, but we don't use those (yet)
	# POWERLEVEL9K_TERRAFORM_CLASSES is an array with even number of elements. The first element

	# TODO and for gcloud
	# POWERLEVEL9K_GOOGLE_APP_CRED_CLASSES is an array with even number of elements. The first

	# TODO and for aws
	# POWERLEVEL9K_AWS_CLASSES is an array with even number of elements. The first element

	export GOPROXY=artifactory.squarespace.net/api/go/go
	export GOPRIVATE=*.squarespace.net
	export GONOPROXY=none


	function lsearch {
		ldapsearch -h ldap.squarespace.net -x -b "ou=people,dc=sq,dc=net" "uid=${1}"
	}

	# virtualenvwrapper
	# TODO move this to the python stow?
	# if [[ -f /usr/local/bin/virtualenvwrapper.sh ]]; then
	# 	export VIRTUALENVWRAPPER_PYTHON=/usr/local/bin/python
	# 	export WORKON_HOME=~/python/
	# 	source /usr/local/bin/virtualenvwrapper_lazy.sh
	# fi
fi
