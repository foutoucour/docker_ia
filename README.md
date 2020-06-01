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
### Volumes
Les volumes sont des répertoires qui sont partagés entre le hôte et le container docker.
Ils permettent de faire du statefull, pour des bases de données par exemple, mais aussi pour
d'injecter des fichiers au runtime, comme des fichiers de configuration.
Les volumes sont ici définis dans le fichier [docker-compose](https://docs.docker.com/compose/compose-file/#volume-configuration-reference)
 mais ils pourraient être aussi défini à partir d'une commande [docker run -v](https://docs.docker.com/storage/volumes/)

Ne pas confondre le `COPY` et `volume`
* `COPY` copie la source dans l'image docker au build et ne sera pas dynamique. Le lien entre le hôte de la source est rompue.
* Un volume est monté au runtime. Le lien entre le hôte de la source est préservé. Si un changement est fait dans le volume, 
ajout, modification d'un fichier par exemple, le chagement sera visible et accessible des deux cotés, dans le container
 mais aussi sur le hôte.

### Comment utiliser le service
* build les services: `docker-compose build`
* lancer les services: `docker-compose up`
* dans un browser: `http://localhost:8888`