Valentin - Seydina - Adrien - Félix

# Etapes

  -  1 - Créer les docker-compose files
  - [X] 2 - Connecter les machines et créer le swarm
  -  3 - Tester les services

# Commandes utilisées

    manager> docker swarm init --advertise-addr=<IP-ADDRESS-OF-MANAGER>
    workers> docker swarm join --token <TOKEN> --advertise-addr <IP-ADDRESS-OF-WORKER-1> <IP-ADDRESS-OF-MANAGER>:2377
    manager> docker network create --driver=overlay --attachable --subnet 120.0..0/23 reseau_public
    workers> docker network connect reseau_entreprise routeur-name