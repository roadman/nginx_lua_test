#!/bin/sh
type valgrind > /dev/null 2>&1
if [ "$?" = "0" ]; then
    #sudo valgrind -v  --leak-check=full /usr/local/ngx_http_test_lua/sbin/nginx
    sudo valgrind --leak-check=full /usr/local/ngx_http_test_lua/sbin/nginx
else
    sudo /usr/local/ngx_http_test_lua/sbin/nginx
fi

