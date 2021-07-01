#!/bin/bash
app="docker.flask123456"
docker build -t flask_app123456 .
docker run -d -p 56733:80 \
  --name=flask_app123456 \
  -v $PWD:/app flask_app123456
