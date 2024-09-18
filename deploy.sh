#!/bin/bash

sudo apt update

cd ./NetflixMovieCatalog

source .venv/bin/activate

python3 app.py

cd ..

sudo apt update

sudo systemctl restart nginx

sudo systemctl reload nginx

sudo systemctl start nginx

sudo apt update
# TODO your deploy script implementation...