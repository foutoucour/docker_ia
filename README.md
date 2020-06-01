# docker_ia
Utilisation de docker pour des projets d'IA

## Docker

### Installation
* windows: docker for windows: https://docs.docker.com/docker-for-windows/
* linux: docker engine: https://docs.docker.com/engine/install/

### Commandes
* `docker build` pour "compiler" un service
* `docker pull` pour télécharger une image docker
* `docker ps` pour lister les dockers qui tournent sur une machine
* `docker run` pour lancer un service docker (un container)

Reference: https://docs.docker.com/engine/reference/commandline/cli/

### Dockerfile
Le fichier `Dockerfile` est la description des différentes commandes et étapes
qui vont être roulée durant un `docker build`.

Reference: https://docs.docker.com/engine/reference/builder/

#### Bonnes pratiques
1. Toujours versioner les librairies dans le dockerfile. Il faut qu'un build reproduise
le même résultat.

## Docker-compose
`docker-compose` va permettre de mettre dans un fichier `yml` l'ensemble des configurations
autour d'un stack de service Docker.
La description se fait dans un fichier `docker-compose.yml`.
 
### Installation
* https://docs.docker.com/compose/install/

### Commandes
* `docker-compose pull` pour télécharger l'ensemble des images décrites dans le fichier
* `docker-compose build` pour contruire tous les services du fichier
* `docker-compose up` pour lancer tous les services du fichier
* `docker-compose up -d` comme `up` mais avec les services en background
* `docker-compose down` pour arreter tous les services du fichier

Reference: https://docs.docker.com/compose/

### Comment utiliser le service
* build les services: `docker-compose build`
* lancer les services: `docker-compose up`
* dans un browser: `http://localhost:8888`