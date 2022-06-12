current_dir := $(shell pwd)
user := $(shell whoami) 

up: 
	sudo docker-compose up
build:
	sudo docker-compose up --build