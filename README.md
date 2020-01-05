# DEFA docker course - part 1 entrypoint
[DEFA docker course - part 1 entrypoint](#defa-docker-course---part-1-entrypoint)

Harsh rerun of the course material part1 https://devopswithdocker.com/part1/

| Dockerfile                        | Resulting command                                |
| --------------------------------- | ------------------------------------------------ |
| ENTRYPOINT /bin/ping -c 3         | /bin/sh -c ‘/bin/ping -c 3’ /bin/sh -c localhost |
| CMD localhost                     |                                                  |
| ENTRYPOINT [“/bin/ping”,”-c”,”3”] | /bin/ping -c 3 /bin/sh -c localhost              |
| CMD localhost                     |                                                  |
| ENTRYPOINT /bin/ping -c 3         | /bin/sh -c ‘/bin/ping -c 3’ localhost            |
| CMD [“localhost”]                 |                                                  |
| ENTRYPOINT [“/bin/ping”,”-c”,”3”] | /bin/ping -c 3 localhost                         |
| CMD [“localhost”]                 |                                                  |
