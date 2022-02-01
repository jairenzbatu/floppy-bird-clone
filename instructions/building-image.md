#builds the dockerfile as docker image
docker build -t floppybird:1 .

#view all docker images to verify if the image has been created
docker images


#run the newly built image
docker rm -f floppy

docker run \
-dit \
--name floppy \
-p 5000:80 \
floppybird:1

