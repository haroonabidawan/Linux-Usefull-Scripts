echo -e "\e[0;32m---------Updating apt---------\e[0m"

sudo apt update

echo -e "\e[0;32m---------Adding Keys & Certificates && Removing Installed Docker---------\e[0m"

sudo apt -y install apt-transport-https ca-certificates curl software-properties-common
sudo apt -y remove docker docker-engine docker.io containerd runc

echo -e "\e[0;32m---------Add Dockers official GPG key---------\e[0m"

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo -e "\e[0;32m---------Add the Docker repository to Linux Mint---------\e[0m"

echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu bionic stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo -e "\e[0;32m---------Install Docker Engine and Docker Compose in Linux Mint---------\e[0m"

sudo apt update

sudo apt install docker-ce docker-ce-cli containerd.io