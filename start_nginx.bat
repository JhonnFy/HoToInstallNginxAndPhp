

@ECHO OFF


REM Windows The following is not valid  

REM set PHP_FCGI_CHILDREN=5


REM  

Each process handles the maximum number of requests, or is set to Windows Environment variables  

set PHP_FCGI_MAX_REQUESTS=1000




:: Start PHP-fastcgi on port 9000

set PATH=C:\php;%PATH%

cd C:\php

C:\nginx\RunHiddenConsole php-cgi.exe -b 127.0.0.1:9000 -c php.ini





::

::Start Memcached (m = memory to use in MB, c = max connections allowed)

::RunHiddenConsole C:\nginx1_16_0\memcached\memcached.exe -m 1048 -c 2048




:: Start the nginx server

cd C:\nginx

start nginx.exe




EXIT