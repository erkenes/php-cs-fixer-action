ARG PHP_CS_FIXER_VERSION
ARG PHP_VERSION=8.3

FROM ghcr.io/php-cs-fixer/php-cs-fixer:${PHP_CS_FIXER_VERSION}-php${PHP_VERSION}

LABEL "com.github.actions.name"="PHP-CS-Fixer"
LABEL "com.github.actions.description"="Use PHP-CS-Fixer to fix your PHP code style"
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/erkenes/php-cs-fixer-action"
LABEL "homepage"="http://github.com/actions"
LABEL "maintainer"="Enes Erk <support@eneserk.de>"

ADD entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
