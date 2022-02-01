FROM gcr.io/kaggle-gpu-images/python

ENV lang="ja_jp.utf-8" language="ja_jp:ja" lc_all="ja_jp.utf-8"

RUN apt-get update --fix-missing; exit 0
RUN apt-get install -y openssh-server

#for countermeasures libstdc++.so.6: version `GLIBCXX_3.4.22' not found
RUN add-apt-repository ppa:ubuntu-toolchain-r/test; exit 0
RUN apt update -y; exit 0
RUN apt upgrade -y; exit 0