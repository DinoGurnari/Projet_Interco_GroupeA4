Hugo - Ghislain - Dino

# Etapes

  - 1 - Créer les docker-compose files
  - 2 - Connecter les machines et créer le swarm
  - 3 - Tester les services

# Commandes utilisées

    manager> docker swarm init --advertise-addr=<IP-ADDRESS-OF-MANAGER>
    workers> docker swarm join --token <TOKEN> --advertise-addr <IP-ADDRESS-OF-WORKER-1> <IP-ADDRESS-OF-MANAGER>:2377
    manager> docker network create --driver=overlay --attachable --subnet 120.0.72.0/22 reseau_entreprise