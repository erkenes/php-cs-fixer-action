#!/bin/sh -l

set -e
php -v

/usr/local/bin/php-cs-fixer --version
/usr/local/bin/php-cs-fixer fix $*
