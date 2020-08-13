Unresolved errors:

Getting a 500 error now
```
This page isn't working at the momentec2-3-9-34-14.eu-west-2.compute.amazonaws.com can't currently handle this request.
HTTP ERROR 500
```

/var/log/apache2/error.log is showing:

```
[Thu Aug 13 00:00:58.103431 2020] [php7:error] [pid 31] [client 82.69.77.127:1047] PHP Fatal error:  Uncaught PDOException: PDO::__construct(): php_network_getaddresses: getaddrinfo failed: Name or service not known in /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:27\nStack trace:\n#0 /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(27): PDO->__construct('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#1 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(64): Doctrine\\DBAL\\Driver\\PDOConnection->__construct('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#2 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(97): Illuminate\\Database\\Connectors\\Connector->createPdoConnection('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#3 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(47): Illuminate\\Database\\Connectors\\Connector->tryAgainIfCausedByLostConnection(Object(Doctrine\\DBAL\\Driver\\PDOE in /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php on line 31
[Thu Aug 13 00:00:58.106868 2020] [php7:error] [pid 31] [client 82.69.77.127:1047] PHP Fatal error:  Uncaught PDOException: PDO::__construct(): php_network_getaddresses: getaddrinfo failed: Name or service not known in /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php:27\nStack trace:\n#0 /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php(27): PDO->__construct('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#1 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(64): Doctrine\\DBAL\\Driver\\PDOConnection->__construct('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#2 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(97): Illuminate\\Database\\Connectors\\Connector->createPdoConnection('mysql:host=${MY...', '${MYSQL_USER}', '${MYSQL_PASSWOR...', Array)\n#3 /var/www/html/vendor/laravel/framework/src/Illuminate/Database/Connectors/Connector.php(47): Illuminate\\Database\\Connectors\\Connector->tryAgainIfCausedByLostConnection(Object(Doctrine\\DBAL\\Driver\\PDOE in /var/www/html/vendor/doctrine/dbal/lib/Doctrine/DBAL/Driver/PDOConnection.php on line 31
```

