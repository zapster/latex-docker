Based on https://github.com/blang/latex-docker

Latex docker container
=====

This container helps compiling latex sources without the need to install all latex packages on your system.

Setup
-----

Pull image ([from Docker Hub](https://registry.hub.docker.com/u/zapster/latex)):
```bash
$ docker pull zapster/latex
```
or build:
```bash
$ docker build -t zapster/latex .

```

Usage:
-----

```bash
$ cd path/to/latex/src

# start container
$ docker run --rm -it -v $(pwd):/data zapster/latex

# use latex in the shell
docker$ pdflatex example.tex
docker$ pdflatex example.tex
```

