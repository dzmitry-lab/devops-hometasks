#!/bin/bash
sudo docker run --rm -ti -d -v `pwd`/index.html:/var/www/html/index.html -p 8081:80 hometask-image