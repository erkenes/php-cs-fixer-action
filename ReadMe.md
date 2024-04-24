# GitHub Action for PHP-CS-Fixer

With this action you can run PHP-CS-Fixer in your GitHub Actions workflow.

> NOTE: If you didn't create a `.php-cs-fixer.dist.php` file, do that first before adding this workflow. An example of this file created by the creators of PHP-CS-Fixer can be found [here](https://github.com/FriendsOfPHP/PHP-CS-Fixer/blob/master/.php-cs-fixer.dist.php).


## Usage

Define your GitHub workflow.

```yaml
# .github/workflows/php-cs-fixer.yml

name: PHP-CS-Fixer

on:
  pull_request:
    types: [review_requested, ready_for_review]

jobs:
  php-cs-fixer:
    name: PHP-CS-Fixer
    runs-on: ubuntu-latest
    steps:
      -
        uses: actions/checkout@v4

      -
        name: Run PHP-CS-Fixer
        uses: erkenes/php-cs-fixer-action@main
```

### Use auto-commit

To commit the changes automatically to the branch of the pull request, you can use the following configuration:

```yaml
# .github/workflows/php-cs-fixer.yml

jobs:
  php-cs-fixer:
    name: PHP-CS-Fixer
    runs-on: ubuntu-latest
    steps:
      -
        uses: actions/checkout@v4

      -
        name: Run PHP-CS-Fixer
        uses: erkenes/php-cs-fixer-action@main

      -
        uses: stefanzweifel/git-auto-commit-action@8621497c8c39c72f3e2a999a26b4ca1b5058a842
        with:
          commit_message: 'fix: Apply php-cs-fixer changes'
```

## Local build for testing

```bash
docker build \
  --build-arg "PHP_VERSION=8.2" \
  --build-arg "PHP_CS_FIXER_VERSION=3.54.0" \
  --tag "erkenes/php-cs-fixer-action:local" \
  .
```
