#!/bin/bash

: ${NGINX_COLOR:=white}
: ${NGINX_MSG:=Welcome to nginx}

cat >  /usr/share/nginx/html/index.html <<EOF
<!DOCTYPE html>
<html>
<head>
<title>nginx</title>
<style>
    body {
        width: 35em;
        margin: 0 auto;
        font-family: Tahoma, Verdana, Arial, sans-serif;
        background: ${NGINX_COLOR};
    }
</style>
</head>
<body>
<h1>${NGINX_MSG}!</h1>
</body>
</html>
EOF

/usr/sbin/nginx
