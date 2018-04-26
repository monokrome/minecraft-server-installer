FROM openjdk
MAINTAINER Bailey Stoner <monokrome@monokro.me>

WORKDIR /usr/local

RUN apt-get install -qq git-core wget
ADD bin/minecraft /usr/local/bin/minecraft

EXPOSE 25565

CMD ["minecraft"]
