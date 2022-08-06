#!/bin/env sh

yum install ansible-core podman openssl python3-jmespath.noarch -y
ansible-galaxy collection install community.general
ansible-galaxy collection install ansible.posix
ansible-galaxy collection install containers.podman


alternatives --set python /usr/bin/python3.8
alternatives --set python3 /usr/bin/python3.8

pip3 install jmespath
pip3 install dnspython


wget https://github.com/mikefarah/yq/releases/download/v4.27.2/yq_linux_amd64 -O /usr/bin/yq
chmod +x /usr/bin/yq


