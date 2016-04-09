# Dockerfile for Laravel 5 Local Development

## Build
Build image using Dockerfile

## Run using docker compose
`docker-compose up`

## Migrate
- create database 'homestead'  
- run artisan migrate  
`docker exec -it project_app_1 php artisan migrate`
