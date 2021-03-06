function signmebro() {
	(
		export VAULT_ADDR="http://localhost:8200/"
		pubkeyfile=${1:-${HOME}/.ssh/id_ed25519.pub}
		certfile=$(dirname ${pubkeyfile})/$(basename ${pubkeyfile} .pub)-cert.pub
		echo "signing ${pubkeyfile} and installing it to ${certfile}"
		vault login -method=userpass -no-print username=kitchen
		cert=$(vault write -field signed_key sshca/sign/kitchen public_key=@${pubkeyfile})
		echo cert is: $cert
		echo $cert > $certfile
	)
}
