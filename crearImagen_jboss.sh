#!/bin/bash

#creando imagen
docker build --rm -t packt/eap-7.0 . 
# corriendo imagen
docker run -p 8080:8080 -p 9990:9990 -d packt/eap-7.0  
