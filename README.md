# symfony-built-in-web-server-with-php-fpm

```
941596a99898:/app# symfony local:php:list
+---------+------------+---------+---------------------+-------------+---------+---------+
| Version | Directory  |   PHP   |         PHP         |     PHP     | Server  | System? |
|         |            |   CLI   |         FPM         |     CGI     |         |         |
+---------+------------+---------+---------------------+-------------+---------+---------+
| 8.1.16  | /usr/local | bin/php | /usr/sbin/php-fpm81 | bin/php-cgi | PHP FPM | *       |
+---------+------------+---------+---------------------+-------------+---------+---------+

The current PHP version is selected from default version in $PATH

To control the version used in a directory, create a .php-version file that contains the version number (e.g. 7.2 or 7.2.15),
or define config.platform.php inside composer.json.
If you're using Platform.sh, the version can also be specified in the .platform.app.yaml file.
```

```
941596a99898:/app# ps -a
PID   USER     TIME  COMMAND
    1 root      0:00 symfony server:start --no-tls
   17 root      0:00 {php-fpm81} php-fpm: master process (/root/.symfony5/php/0c35eebf403cf91fe77a64921d76aa1ca6411d20/fpm-8.1.16.ini)
   18 www-data  0:00 {php-fpm81} php-fpm: pool www
   19 www-data  0:00 {php-fpm81} php-fpm: pool www
   20 root      0:00 bash
   51 root      0:00 ps -a

```
