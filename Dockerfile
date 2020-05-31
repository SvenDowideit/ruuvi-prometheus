FROM golang

RUN apt update \
    && apt install -yq bluez

WORKDIR /src

COPY . .

RUN make ruuvi-prometheus

CMD /src/entrypoint.sh

LABEL run.jig.docker.run="docker run --rm -it --privileged --net=host -p 9521:9521 {{.Image}}"