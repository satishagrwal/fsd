Docker Freeswitch
-----------------

Build a SIP-based telephony system capable of routing calls to and from SIP
endpoints registered on the FreeSWITCH server.

If you want to use window based docker container. Please follow below steps

Setup:
-----------------
Install docker on window machine.

Build Image
----------------
docker build -t fsd . -f FSDockerfile

Run docker
---------------
docker run -ti -p 2223:22 -p 5060:5060/tcp -p 5060:5060/udp -p 16384:16384/udp -p 16385:16385/udp -p 16386:16386/udp -p 16387:16387/udp -p 16388:16388/udp -p 16389:16389/udp -p 16390:16390/udp -p 16391:16391/udp -p 16392:16392/udp -p 16393:16393/udp -p 5080:5080/tcp -p 5080:5080/udp fsd /bin/bash

Your docker freeswitch is ready to use.

If you want to use linux based docker container, you have to run below command to build image. It will do everything for you like image creation and docker execution with port.

docker build -t fsd . -f FSDockerfile
