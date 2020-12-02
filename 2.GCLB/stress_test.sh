using apache_benchmark


ab -n 500000 -c 1000 http://$LB_IP/


ab -n 500000 -c 1000 http://107.178.242.197/



root@stress-test:/home/googleod529920_student# export LB_IP=107.178.242.197
root@stress-test:/home/googleod529920_student# echo $LB_IP
107.178.242.197
root@stress-test:/home/googleod529920_student# ab -n 500000 -c 1000 http://$LB_IP/
This is ApacheBench, Version 2.3 <$Revision: 1843412 $>
Copyright 1996 Adam Twiss, Zeus Technology Ltd, http://www.zeustech.net/
Licensed to The Apache Software Foundation, http://www.apache.org/

Benchmarking 107.178.242.197 (be patient)
Completed 50000 requests
...
...
...