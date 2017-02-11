#!/usr/bin/bash

: ${PORT:=8080}

xdg-open http://localhost:$PORT
php -S 0.0.0.0:$PORT
