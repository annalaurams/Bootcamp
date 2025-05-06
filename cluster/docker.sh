#!/bin/bash
curl -fsSL https://get.docker.com | sudo bash
sudo curl -fsSL "https://github.com/docker/compose/releases/download/1.25.4/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
sudo usermod -aG docker vagrant

# Criar volume 
docker volume create meu_volume

# Exemplo
mkdir -p /home/vagrant/html
echo "<h1>Bem-vindo ao Docker Swarm!</h1>" > /home/vagrant/html/index.html

# Rodar
docker run -d \
  --name web_example \
  -p 8080:80 \
  -v meu_volume:/data \
  -v /home/vagrant/html:/usr/share/nginx/html:ro \nginx
