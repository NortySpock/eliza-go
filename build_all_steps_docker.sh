#!/bin/bash
CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server .
docker build -t eliza-go .
docker-compose up -d
