#!/bin/bash

sudo apt update

cd ./NetflixMovieCatalog

source .venv/bin/activate

cd ..

sudo systemctl stop simplepy.service


sudo apt update

sudo systemctl start nginx

sudo apt update

# TODO your deploy script implementation...