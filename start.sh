#!/bin/bash
app="django.apps"
docker build -t ${app} .
docker run -d -p 7777:7777 \
  --name=${app} \
  -v $PWD:/app ${app}