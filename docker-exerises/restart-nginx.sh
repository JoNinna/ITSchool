#!/bin/bash

docker stop web-server

docker run -d -p 8090:80 -v /home/ninna/work/ITSchool/docker-exerises/site-web:/usr/share/nginx/html --rm  --name web-server nginx

