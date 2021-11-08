# Projet Interconnexion Groupe 4

## Première utilisation :

### Packages à récuperer :
    docker
    docker-compose

### Créer le groupe docker :
<!-- Source : https://docs.docker.com/engine/install/linux-postinstall/ -->
    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker
    docker run hello-world                  <!-- Pour tester si le groupe à bien été créé -->

### Image à récuperer :
    docker pull weibeld/ubuntu-networking

## Etapes pour utiliser docker : 
    sudo systemctl start docker.service     <!-- Lancer docker -->
    sudo systemctl enable docker.service    <!-- Lancer automatiquement docker au démarrage -->
    docker compose up                       <!-- Lance les containers -->
    docker attach $id_container$            <!-- Ouvre le container -->