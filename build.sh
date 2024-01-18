#!/bin/bash

# Detener y eliminar contenedores y volúmenes
docker-compose down -v

# Limpiar datos de directorios
rm -rf ./master/data/*
rm -rf ./slave/data/*

# Construir contenedores
docker-compose build

# Iniciar contenedores en segundo plano
docker-compose up -d
