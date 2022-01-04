Hugo - Ghislain - Dino

# Etapes

  - [X] 1 - Créer les docker-compose files
  - [X] 2 - Connecter les machines et créer le swarm
  -  3 - Tester les services :
     -  Ghislain : Faire le NAT
     -  Hugo : DNS, SIP, etc.
     -  Dino : Mettre en place le routage

# Commandes utilisées

    manager> docker swarm init --advertise-addr=<IP-ADDRESS-OF-MANAGER>
    workers> docker swarm join --token <TOKEN> --advertise-addr <IP-ADDRESS-OF-WORKER-1> <IP-ADDRESS-OF-MANAGER>:2377
    manager> docker network create --driver=overlay --attachable --subnet 120.0.72.0/23 reseau_entreprise
    workers> docker network connect reseau_entreprise routeur-name
    dino> docker run -it --name routeur_dino weibeld/ubuntu-networking