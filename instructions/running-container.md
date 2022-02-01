docker rm -f floppy

docker run \
-dit \
--name floppy \
-p 5000:80 \
-v /opt/floppy-bird-clone:/usr/local/apache2/htdocs/ \
httpd:2.4


firewall-cmd --permanent --add-port=5000/tcp
firewall-cmd --runtime-to-permanent