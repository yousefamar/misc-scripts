#!/usr/bin/bash

: ${PORT:=8080}

xdg-open http://localhost:$PORT
python3 -m http.server $PORT
