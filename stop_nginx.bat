@ECHO OFF

:: Kill all these processes

taskkill /f /IM nginx.exe

taskkill /f /IM php-cgi.exe

taskkill /f /IM memcached.exe

EXIT