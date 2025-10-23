# Lancer mySQL via docker avec la CLI

initialisation simple :

```$ docker run --name mysql_veille_falaise -e MYSQL_ROOT_PASSWORD=pw -d mysql:mysql:8.0-debian```

Avec rattachement du volume (à créer auparavant) pour écrire les données de manière persistante et relier les ports de la machine local avec celui du container.

```$ docker run --name mysql_veille_falaise -v /home/louberehc/veille_falaise/database:/var/lib/mysql -e MYSQL_ROOT_PASSWORD=pw -p 3306:3306 -d mysql:8.0-debian```

remarque : Une fois le container créé, il doit être réactiver via la commande ```docker start veille_falaise```. Le script start_db_with_docker.sh gère cela.