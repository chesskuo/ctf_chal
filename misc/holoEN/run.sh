#!/bin/sh

docker build -t holoen .
docker run --name holoen -p 8801:80 -d holoen
