sudo docker run -d --rm --name=host1 --net=nagoya-net --ip=172.20.0.3 --dns=172.20.0.2 ubuntu:bionic /bin/bash -c "while :; do sleep 10; done"

sudo docker exec -d dns-server /etc/init.d/bind9 start

# lancer image bind9
sudo docker run -d --rm --name=dns-server --net=societe-net --ip=172.20.0.2 bind9

# lancer image asterisk
sudo docker run -d --rm --name=voip-server --net=societe-net --ip=172.20.0.2 asterisk

# lancer image apache2
sudo docker run -d --rm --name=web-server --net=societe-net --ip=172.20.0.2 apache2

sudo docker ps

sudo docker build -t bind9 .

sudo docker run -it --name=dns8-server --net=societe-net --ip=172.20.0.15 bind9

