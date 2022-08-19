rbcat(1) -- POSIX cat in Ruby
================================================================

## SYNOPSIS

`rbcat` [options] [FILES...]

## DESCRIPTION

The `cat` utility in ruby, per the [POSIX specification](http://pubs.opengroup.org/onlinepubs/000095399/utilities/cat.html), plus logging. Intended to be used as a single-file, no-dependency template for writing shell scripts.

## OPTIONS

These options control how `rbcat` operates.

* `-u`:
  Unbuffer output.

* `-v`:
  Verbose output. Can be used multiple times.

## ENVIRONMENT

* `LOG_LEVEL`:
  Sets the log level using the standard log level names (ex 'INFO'). Overrides `-v`.

## EXAMPLES

```bash
rbcat > file <<DOC
content
DOC

rbcat file
# content
```

## INSTALLATION

Add `rbcat` to your PATH (or execute it directly). There are no additional dependencies.

## DEVELOPMENT

Get a shell container. All you need is docker compose.

```shell
./Projectfile shell
```

Do development in the shell.

```shell
# run the utility
./bin/rbcat <<<"success"

# run tests
./test/suite
```
