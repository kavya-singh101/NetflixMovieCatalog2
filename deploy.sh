#!/bin/bash

sudo apt update

cd ./NetflixMovieCatalog

source .venv/bin/activate

sudo apt update

sudo systemctl reload nginx

sudo systemctl start nginx

sudo apt update
# TODO your deploy script implementation...