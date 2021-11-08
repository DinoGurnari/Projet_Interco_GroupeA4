# Projet Interconnexion Groupe 4

## Packages à récuperer :
  - docker
  - docker compose

## Image à récuperer :
  - docker pull weibeld/ubuntu-networking

## Etapes : 
  - sudo systemctl start docker.service     <!-- Lancer docker -->
  - sudo systemctl enable docker.service    <!-- Lancer automatiquement docker au démarrage -->
  - docker compose up                       <!-- Lance les containers -->
  - docker attach $id_container$            <!-- Ouvre le container -->