#!/bin/sh

# Add local user
# Either use the LOCAL_USER_ID if passed in at runtime or
# fallback

USER_ID=${LOCAL_USER_ID:-1000}

echo "Starting with UID : $USER_ID"
adduser -s /bin/shell -u $USER_ID -h /home/user -D -H user
export HOME=/home/user

mkdir -p /home/user
chown -R user: /home/user

exec /usr/bin/gosu user "$@"
