# Docker_Samba
Servidor Samba Docker

# Criar Imagem
 docker build -t samba-container .

# Subir Container
docker run -d -p 139:139 -p 445:445 -v /Users/frudek/Documents/Developer/Docker/Samba:/shared_folder --name samba-share samba-container
