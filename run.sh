#!/bin/bash
docker image rm alabapay_api:latest
docker build -t alabapay_api:latest .
docker rm -f alabapay_api
docker run -it -d -p 8500:8181 --name alabapay_api alabapay_api:latest
# docker run -it -d --name alabapay_api --network apps -e LETSENCRYPT_EMAIL="anhocva@gmail.com" alabapay_api:latest