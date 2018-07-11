FROM openjdk:alpine

ENV LANG en_US.UTF-8

RUN apk --no-cache add \
        graphviz \
        ttf-droid \
        ttf-droid-nonlatin

ADD https://sourceforge.net/projects/plantuml/files/plantuml.jar/download /plantuml.jar
RUN chmod 444 /plantuml.jar

ADD overlay/ /
RUN chmod 555 /bin/plantuml

ENTRYPOINT ["/bin/plantuml"]
