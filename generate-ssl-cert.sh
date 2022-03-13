# Roughly based on this guide https://www.digitalocean.com/community/tutorials/how-to-create-a-self-signed-ssl-certificate-for-nginx-on-centos-7

mkdir certs

# 1. Create key and cert files
sudo openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout server.key -out server.crt
# 2. Make the key file 700
sudo chmod 700 certs/server.key
# 3. For "Perfect Forwarding Secrecy" negotiation with clients
sudo openssl dhparam -out certs/dhparam.pem 2048
