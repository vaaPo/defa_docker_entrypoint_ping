# DEFA docker course - part 1 entrypoint
[DEFA docker course - part 1 entrypoint](#defa-docker-course---part-1-entrypoint)
This docker image will ping your localhost to nirvana!

Harsh rerun of the course material part1 https://devopswithdocker.com/part1/

| Dockerfile                        | Resulting command                                | works ?                                                        |
| --------------------------------- | ------------------------------------------------ | -------------------------------------------------------------- |
| ENTRYPOINT /bin/ping -c 3         | /bin/sh -c ‘/bin/ping -c 3’ /bin/sh -c localhost | Usage: ping                                                    |
| CMD localhost                     |                                                  |                                                                |
| ENTRYPOINT ["/bin/ping","-c","3"] | /bin/ping -c 3 /bin/sh -c localhost              | ping: bad number of packets to transmit.                       |
| CMD localhost                     |                                                  |                                                                |
| ENTRYPOINT /bin/ping -c 3         | /bin/sh -c ‘/bin/ping -c 3’ localhost            | Usage: ping                                                    |
| CMD ["localhost"]                 |                                                  |                                                                |
| ENTRYPOINT ["/bin/ping","-c","3"] | /bin/ping -c 3 localhost                         | 3 packets transmitted, 3 received, 0% packet loss, time 2036ms |
| CMD ["localhost"]                 |                                                  |                                                                |

# docker
```code
docker build -t vaapo/entrypoint_ping .
docker run vaapo/entrypoint_ping
```

# docker-compose can be used
See docker-compose.yml
```ode
docker-compose build
docker-compose run entrypoint_ping
```
# dockerhub
The push refers to repository [docker.io/vaapo/entrypoint_ping]
```code
docker-compose push
docker pull vaapo/entrypoint_ping
docker run vaapo/entrypoint_ping
```


