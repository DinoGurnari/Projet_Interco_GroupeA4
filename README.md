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

## Étapes pour utiliser docker : 
    sudo systemctl start docker.service     <!-- Lancer docker -->
    sudo systemctl enable docker.service    <!-- Lancer automatiquement docker au démarrage -->
    docker compose up                       <!-- Lance les containers -->
    docker attach $id_container$            <!-- Ouvre le container -->

## Extensions VSCode utiles :
  - Docker : https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker
  - GitGraph : https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph
  - GitHub Pull Requests and Issues : https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github
  - GitHub : https://marketplace.visualstudio.com/items?itemName=KnisterPeter.vscode-github