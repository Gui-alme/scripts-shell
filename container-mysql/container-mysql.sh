sudo docker rm --force ContainerBD
sudo apt update && sudo apt upgrade
sudo apt install docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo docker pull mysql:5.7
sudo docker run -d -p 3306:3306 --name ContainerBD -e "MYSQL_DATABASE=ToodDatabase" -e "MYSQL_ROOT_PASSWORD=sptech" mysql:5.7
sudo docker exec -it ContainerBD bash

