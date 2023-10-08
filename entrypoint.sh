#!/bin/bash

# Ajusta as permissões da pasta compartilhada
chmod -R 777 /shared_folder

# Inicia o servidor Samba
smbd -F --no-process-group

