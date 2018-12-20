FROM python:3.6.6

RUN apt-get update
RUN apt-get install sudo
RUN apt-get -y install mecab libmecab-dev mecab-ipadic-utf8 swig
RUN git clone --depth 1 https://github.com/neologd/mecab-ipadic-neologd.git\
    && cd mecab-ipadic-neologd\
    && bin/install-mecab-ipadic-neologd -n -y
