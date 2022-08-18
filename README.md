rbcat(1) -- POSIX cat in Ruby
================================================================

## SYNOPSIS

`rbcat` [options] [FILES...]

## DESCRIPTION

The `cat` utility in ruby, per the [POSIX specification](http://pubs.opengroup.org/onlinepubs/000095399/utilities/cat.html).

## OPTIONS

These options control how `rbcat` operates.

* `-u`:
  Unbuffer output.

## EXAMPLES

```bash
rbcat > file <<DOC
content
DOC

rbcat file
# content
```

## INSTALLATION

Add `rbcat` to your PATH (or execute it directly).

## DEVELOPMENT

Clone repo, get a shell container.

```shell
./Projectfile shell
```

Do development in the shell.

```shell
# run the utility
./bin/rbcat <<<"success"
```

Use the Projectfile for common tasks.

```shell
# test
./Projectfile test

# lint
./Projectfile lint

# fix
./Projectfile fix
```
