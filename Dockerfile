FROM ubuntu:latest

RUN apt-get update && apt-get install -y samba

COPY smb.conf /etc/samba/smb.conf

COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

RUN useradd -m -s /bin/false smbuser
RUN (echo "felipe"; echo "felipe") | smbpasswd -a -s smbuser

CMD ["smbd", "-F", "--no-process-group"]





