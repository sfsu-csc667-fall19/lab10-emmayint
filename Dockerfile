FROM node:10-alpine
# node Version of the user's local will be installed on docker otherwise?

WORKDIR /main
COPY . /main 
# copy everything into docker dir

RUN npm install

EXPOSE 80
# port to outside

CMD ["node", "index.js"]
# command to run

# build an image (class), container is the instance
# $ docker image (instructions on how to create an instance of this ..) ls hello-docker
# linux and node pre compiled on docker