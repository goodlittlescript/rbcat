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

Clone repo, build images.

```bash
make images
make shell
```

Run the utility and run tests.

```bash
make run <<<"success"
make test lint
```

Get a shell for development.

```bash
make shell
# ./bin/rbcat <<<"success"
# ./test/suite
```

Package.

```bash
make artifacts
```
