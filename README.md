# docker-alpine-node-npm-gulp
lightweight alpine, node, npm &amp; gulp container

Uses `entrypoint.sh` as the entrypoint, which will set the UID to `1000` or the
value of the environment variable `LOCAL_USER_ID` if it is set
