#!/bin/bash

sudo apt update

cd ./NetflixMovieCatalog

source .venv/bin/activate

cd ..

sudo systemctl daemon-reload
sudo systemctl enable simplepy.service
sudo systemctl start simplepy.service

sudo apt update

sudo systemctl restart nginx

sudo systemctl reload nginx

sudo systemctl start nginx

sudo apt update

# TODO your deploy script implementation...