set -euo pipefail

. /etc/os-release

if [[ "$ID" != ubuntu ]]; then
	read -p "This script is only guaranteed for Ubuntu - run anyway? y/N> "
	[[ "$REPLY" =~ ^y|Y|yes|YES$ ]] || exit 1
fi

[[ "$UID" = 0 ]] || {
	echo "You must be root to run this script"
	exit 1
}

apt-get remove docker-ce docker.io || :

packages=(software-properties-common curl)

if ! which pip  1>/dev/null 2>&1 ; then
	packages=("${packages[@]}" python3 python3-pip)
fi

apt-get install "${packages[@]}"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

apt-get update
apt-get install -y docker-ce

pip install --upgrade pip
pip install docker-compose
