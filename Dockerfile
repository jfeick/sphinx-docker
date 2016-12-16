FROM debian:stable-slim

MAINTAINER Jan Frederick Eick <jan-frederick.eick@uni-weimar.de>

RUN apt-get update && apt-get install --yes --no-install-recommends \
        openssh-client \
        make \
        git \
        curl \
        python-pip \
        python-pil \
        texlive \
        texlive-fonts-recommended \
        texlive-lang* \
        texlive-latex-extra \
        texlive-latex-recommended \
        wget \
    && rm -rf /var/lib/apt/lists/*

RUN pip install Sphinx sphinx_bootstrap_theme sphinx_rtd_theme alabaster recommonmark
RUN mkdir /doc && chmod 755 /doc
WORKDIR /doc
