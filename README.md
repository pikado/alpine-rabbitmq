For using this Docker image:
<pre>
docker run -P pikado/alpine-rabbitmq
<pre>
or
<pre>
docker run -P -e RMQ_USER=foo -e RMQ_PASS=bar pikado/alpine-rabbitmq <br>
</pre>
with account: $RM_USER/$RM_PASS you can access to web console (running on 15672 port)
