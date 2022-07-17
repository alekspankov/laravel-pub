Usage Example
==============

Before you start:
-----------------

1. Open `docker-compose.yml` file to make sure all configs look good for you. E.g. you might need to change port numbers or make some other changes
2. Make a review of `Dockerfile` - you might need to change something there (e.g. install some binaries).

Building deployment
--------------------

1. `$ cd (root)/example`
2. `$ docker-compose pull` - updates all images
3. `$ docker-compose up -d`
4. Enjoy :)