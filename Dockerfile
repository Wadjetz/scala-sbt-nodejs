FROM java

MAINTAINER Wadjetz <egor.neon@gmail.com>

RUN curl -sL https://deb.nodesource.com/setup_5.x | bash - && \
    apt-get install -y nodejs && \
    wget -nv http://dl.bintray.com/sbt/debian/sbt-0.13.9.deb && \
    dpkg -i sbt-0.13.9.deb && \
    wget -nv http://www.scala-lang.org/files/archive/scala-2.11.7.deb && \
    dpkg -i scala-2.11.7.deb && \
    rm sbt-0.13.9.deb scala-2.11.7.deb && \
    sbt reload

