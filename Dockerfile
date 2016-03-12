FROM java

MAINTAINER Wadjetz <egor.neon@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash - && \
    apt-get install -y nodejs && \
    wget -nv http://dl.bintray.com/sbt/debian/sbt-0.13.11.deb && \
    dpkg -i sbt-0.13.11.deb && \
    wget -nv http://www.scala-lang.org/files/archive/scala-2.11.8.deb && \
    dpkg -i scala-2.11.8.deb && \
    rm sbt-0.13.11.deb scala-2.11.8.deb

VOLUME /root/.ivy2
VOLUME /project

WORKDIR /project

CMD sbt
