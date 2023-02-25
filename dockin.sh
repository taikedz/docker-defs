set -euo pipefail

. /etc/os-release

if [[ "$ID" != ubuntu ]] && [[ -z "$UBUNTU_CODENAME" ]]; then
    echo "Only guaranteed for Ubuntu derivatives. Supply environment variable 'UBUNTU_CODENAME' (e.g. 'jammy') to force installation."
    exit 1
else
    UBUNTU_CODENAME="$(lsb_release -cs)"
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

add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $UBUNTU_CODENAME stable"

apt-get update
apt-get install -y docker-ce

