# Setup ansible
sudo hostnamectl set-hostname AnsibleMgmtNode
sudo apt-get update
sudo apt install python3-pip -y
sudo pip3 install --upgrade pip
pip3 install "ansible==2.9.17"
pip3 install ansible[azure]
sudo apt install ansible -y
sudo apt-get install -y acl

# Install dependencies for ansible
ansible-galaxy collection install community.general
ansible-galaxy collection install community.mysql

# Run ansible
ansible-playbook main.yml -i inventory

