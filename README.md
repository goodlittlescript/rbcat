# rbcat

The `cat` utility in ruby, per the [POSIX specification](http://pubs.opengroup.org/onlinepubs/000095399/utilities/cat.html).

## Development

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
./bin/rbcat <<<"success"
./test/suite
```

Package.

```bash
make artifacts
```
