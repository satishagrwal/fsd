Docker Freeswitch
-----------------
This project used to deploy a FreeSWITCH server inside a Docker container and inplement following scenario

1) Only allow to register testSatish1 and testSatish2.
2) Server can route calls to and from registered SIP endpoints.

A)If you want to use window based docker container. Please follow below steps

Setup:
-----------------
Install docker on window machine.

Build Image
----------------
docker build -t fsd . -f FSDockerfile

Run docker
---------------
docker run -ti -p 2223:22 -p 5060:5060/tcp -p 5060:5060/udp -p 16384:16384/udp -p 16385:16385/udp -p 16386:16386/udp -p 16387:16387/udp -p 16388:16388/udp -p 16389:16389/udp -p 16390:16390/udp -p 16391:16391/udp -p 16392:16392/udp -p 16393:16393/udp -p 5080:5080/tcp -p 5080:5080/udp fsd

Your docker freeswitch is ready to use. you can use softphone to register users testSatish1 and testSatish2. This docker image will allow to register these two profile only.

B)If you want to use linux based docker container, you have to run below command. It will do everything for you like image creation, docker execution and freeswitch start.

1) Go to fsd folder
2) Execute below command
root@f7425f5d0091:/fsd#./docker-run.sh

Shell access
------------
If you want to access shell of container, execute below command

docker exec -it <container_id>  /bin/bash

Call Test
----------------
If user testSatish2 dial 7891, freeswitch will connect this to testSatish1 user and vice-versa

Configuration
-------------
1) Disable the example gateway and the IPv6 SIP profiles.
2) Disable all default sip user's profile and added support to add testSatish1 and testSatish2 user.
3) Changed default user password.
4) Configured to restrict blind registration.
