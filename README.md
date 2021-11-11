# Projet Interconnexion Groupe 4

## Première utilisation sur Linux :

### 1 - Paquets à récuperer :
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

## Première utilisation Windows 10/11 (avec WSL2)

### 1 - Activer WSL2 et installer un noyaux linux
Source : https://docs.microsoft.com/fr-fr/windows/wsl/install

Ouvrir powershell et entrez la commande suivante :
    wsl --install <!-- windows va activer WSL2 et installer Ubuntu par defaut mais c'est ce que j'utilise -->

Une fois fini, ouvrir Ubuntu dans le menu démarrer. Entrez un nom utilisateur et un mdp pour votre session linux (prennez un nom différent que la session windows pour les différentier plus facilement dans le terminal) 

### 2 - Installer Docker
Installer docker desktop sur windows en cochant la case WSL2: https://www.docker.com/products/docker-desktop

### 3 - Récupérer l'image
Dans Ubuntu :
    docker pull weibeld/ubuntu-networking


## Commandes pour utiliser docker (sur linux): 
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

## Première utilisation Windows 10/11 (avec WSL2)

### 1 - Activer WSL2 et installer un noyaux linux
Source : https://docs.microsoft.com/fr-fr/windows/wsl/install

Ouvrir powershell et entrez la commande suivante :
    wsl --install <!-- windows va activer WSL2 et installer Ubuntu par defaut mais c'est ce que j'utilise -->

Une fois fini, ouvrir Ubuntu dans le menu démarrer. Entrez un nom utilisateur et un mdp pour votre session linux (prennez un nom différent que la session windows pour les différentier plus facilement dans le terminal) 

### 2 - Installer Docker
Installer docker desktop sur windows en cochant la case WSL2: https://www.docker.com/products/docker-desktop

### 3 - Récupérer l'image
Demarrer Docker desktop
Dans Ubuntu :
    docker pull weibeld/ubuntu-networking

## Utiliser docker
Tout graphiquement depuis l'application docker ou depuis VScode
Pour compiler le projet : dans explorateur de fichier aller dans le dossier testcompose faire maj+clic droit et ouvrir l'interpreteur de commade linux.
taper : docker compose up