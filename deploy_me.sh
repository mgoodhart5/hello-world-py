#!bin/bash

ELASTIC_IP=35.165.27.53
DIR=hello-world
NAME=experiment

echo "Creating directory in instance"
ssh "$ELASTIC_IP" "mkdir ~/$DIR"

echo "Copying files to instance"
scp Dockerfile app.py "$ELASTIC_IP":~/"$DIR"

echo "Moving into directory"
ssh "$ELASTIC_IP" "cd $DIR"

echo "Building Docker image"
ssh "$ELASTIC_IP" "sudo docker build --tag=$NAME" .

echo "Running Docker image"
ssh "$ELASTIC_IP" "sudo docker run -p5000 $NAME"

