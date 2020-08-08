#!/bin/bash
echo "++ Pull de imagen Rancher ++"
docker pull rancher/rancher:latest 

echo "++ Creación de contenedor Rancher  ++"
docker run -d --restart=unless-stopped -p 80:80 -p 443:443 \
-v /opt/rancher:/var/lib/rancher \
rancher/rancher:latest
