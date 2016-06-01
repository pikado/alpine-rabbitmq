#!/bin/sh
$RABBITMQ_HOME/sbin/rabbitmq-server &
RABBITMQ_PID=$!
sleep 5

if [ "$RMQ_USER" != "" ] && [ "$RMQ_PASS" != "" ]; then
$RABBITMQ_HOME/sbin/rabbitmqctl add_user $RMQ_USER $RMQ_PASS
$RABBITMQ_HOME/sbin/rabbitmqctl set_user_tags $RMQ_USER administrator
$RABBITMQ_HOME/sbin/rabbitmqctl set_permissions $RMQ_USER ".*" ".*" ".*"
fi

wait $RABBITMQ_PID 2>/dev/null
