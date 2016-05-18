FROM fedora:22
MAINTAINER Josef Eisl <zapster@zapster.cc>

RUN dnf -y update && dnf clean all
RUN dnf -y install \
  texlive-scheme-small \
  texlive-collection-langgerman \
  texlive-hyperxmp \
  texlive-epstopdf \
  texlive-comment \
  texlive-minted \
  texlive-algorithm2e \
  python-pygments \
  gnuplot \
  make \
  biber \
  inkscape \
  latexmk \
  git \
  qrencode \
  && dnf clean all

RUN useradd -m docker

WORKDIR /data
VOLUME ["/data"]
USER docker
CMD ["bash"]
