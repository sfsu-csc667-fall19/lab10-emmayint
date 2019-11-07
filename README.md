# Lab 9

## Basic Docker

- test basic index.js
- Install docker
- Build Docker image with with `docker build -t hello-docker .`
- View your image with `docker image ls hello-docker`
- Run with `docker run -d -p 3000:3000 hello-docker`
  <!-- run in background (-d) with port (-p) 3000 -->
- View with `docker container ls`
- Stop with `docker stop <container id>`
- Push your docker image with docker push https://docs.docker.com/engine/reference/commandline/push/
  $ docker tag hello-docker emmayin/hello-docker
  $ docker push emmayin/hello-docker
- Run your image off of dockerhub `docker run -p 3000:3000 <username>/hello-docker:v1`
- Try running someone else's image

## Inspecting docker containers

- Get into your contaienr with `docker exec -it <id> sh`
  <!-- interactive -->
- You can now navigate and run commands from inside the container
- To get out, `exit`
- To view running logs `docker logs <id>`

## Docker Swarm (container management)

- Enter swarm mode with `docker swarm init` (make this machine the swarm manager)
- Try to join a swarm with `docker swarm join --token xxx` (become a worker of the swarm manager)
- Deploy stack with `docker stack deploy -c docker-compose.yml swarm-of-hellos` <!-- launch the entire web service -->
- View status with `docker service ls`
- Change replicas and redeploy
- Turn off stack with `docker stack remove swarm-of-hellos`
- Leave swarm with `docker swarm leave --force`

## Run on aws

- Install docker with `sudo snap install docker`
- Run with `sudo docker run -d -p 80:3000 <username>/hello-docker:v1`
- If you want to run the full stack, you will need the `docker-compose.yml` file
  \$ curl localhost:3000
  /main # wget localhost:3002

## TODO

- Install redis client
- To `index.js`, add a redis connection to the redis container
- Commit and push

## push

\$ docker push registry-host:5000/myadmin/rhel-httpd
