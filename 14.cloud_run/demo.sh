bharathkumarraju@R77-NB193 sample_app % docker build -t sample_falsk:1.7 .
Sending build context to Docker daemon  3.584kB
Step 1/6 : FROM python:3.7-slim
 ---> c042d3af0838
Step 2/6 : RUN pip install Flask gunicorn
 ---> Using cache
 ---> f875c63ba0b7
Step 3/6 : WORKDIR /app
 ---> Using cache
 ---> edbac66b58d5
Step 4/6 : COPY . .
 ---> ddbca551f815
Step 5/6 : ENV PORT 8080
 ---> Running in cfb3faaab0ee
Removing intermediate container cfb3faaab0ee
 ---> c1f60133e7fd
Step 6/6 : CMD exec gunicorn --bind :$PORT --workers 1 --threads 8 main:app
 ---> Running in e567b31dd542
Removing intermediate container e567b31dd542
 ---> abed047b190f
Successfully built abed047b190f
Successfully tagged sample_falsk:1.7
bharathkumarraju@R77-NB193 sample_app % docker run -td -p 8088:8080 sample_falsk:1.7
69217ca3b58db36f74234a9afcac8bed342b9412530ae7e26958af03d0aaf4ad


bharathkumarraju@R77-NB193 sample_app % docker ps
CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS              PORTS                    NAMES
69217ca3b58d        sample_falsk:1.7    "/bin/sh -c 'exec gu…"   3 seconds ago       Up 2 seconds        0.0.0.0:8088->8080/tcp   sharp_zhukovsky
bharathkumarraju@R77-NB193 sample_app %


bharathkumarraju@R77-NB193 external % curl http://localhost:8088/
{"Accept":"*/*","Host":"localhost:8088","User-Agent":"curl/7.64.1"}

bharathkumarraju@R77-NB193 external % curl http://localhost:8088/ -vv
*   Trying ::1...
* TCP_NODELAY set
* Connected to localhost (::1) port 8088 (#0)
> GET / HTTP/1.1
> Host: localhost:8088
> User-Agent: curl/7.64.1
> Accept: */*
>
< HTTP/1.1 200 OK
< Server: gunicorn/20.0.4
< Date: Thu, 10 Dec 2020 15:14:04 GMT
< Connection: keep-alive
< Content-Type: application/json
< Content-Length: 68
<
{"Accept":"*/*","Host":"localhost:8088","User-Agent":"curl/7.64.1"}
* Connection #0 to host localhost left intact
* Closing connection 0
bharathkumarraju@R77-NB193 external %
