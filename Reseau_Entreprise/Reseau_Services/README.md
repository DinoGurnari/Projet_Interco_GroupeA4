sudo docker run -d --rm --name=host1 --net=nagoya-net --ip=172.20.0.3 --dns=172.20.0.2 ubuntu:bionic /bin/bash -c "while :; do sleep 10; done"

sudo docker exec -d dns-server /etc/init.d/bind9 start

sudo docker run -d --rm --name=dns-server --net=societe-net --ip=172.20.0.2 bind9

sudo docker run -d --rm --name=dns-server --net=societe-net --ip=172.20.0.2 bind9
