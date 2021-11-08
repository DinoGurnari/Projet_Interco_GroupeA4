# Projet Interconnexion Groupe 4

## Première utilisation :

### 1 - Packages à récuperer :
    docker
    docker-compose

### 2 - Créer le groupe docker :
Source : https://docs.docker.com/engine/install/linux-postinstall/

    sudo groupadd docker
    sudo usermod -aG docker $USER
    newgrp docker                           <!-- Cette commande ne met à jour les groupes que sur
                                            le terminal ouvert il faut sinon relancer la session -->
    docker run hello-world                  <!-- Pour tester si le groupe à bien été créé -->

### 3 - Image à récuperer :
    docker pull weibeld/ubuntu-networking

## Étapes pour utiliser docker : 
    sudo systemctl start docker.service     <!-- Lancer docker -->
    sudo systemctl enable docker.service    <!-- Lancer automatiquement docker au démarrage -->
    docker compose up                       <!-- Lance les containers -->
    docker attach $ID_CONTAINER             <!-- Ouvre le container -->
    CRTL+P CRTL+Q                           <!-- Quitte le container sans l'arreter -->

## Extensions VSCode utiles :
  - Docker : https://marketplace.visualstudio.com/items?itemName=ms-azuretools.vscode-docker
  - GitGraph : https://marketplace.visualstudio.com/items?itemName=mhutchie.git-graph
  - GitHub Pull Requests and Issues : https://marketplace.visualstudio.com/items?itemName=GitHub.vscode-pull-request-github
  - Draw.io Integration : https://marketplace.visualstudio.com/items?itemName=hediet.vscode-drawio
  - GitHub : https://marketplace.visualstudio.com/items?itemName=KnisterPeter.vscode-github