#!/bin/bash

docker stop web-server
docker rm web-server

docker run -d --rm --name web-server nginx
