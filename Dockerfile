FROM rust:latest

# metadata
LABEL mantainer="Gius. Camerlingo <gcamerli@gmail.com>"
LABEL version="1.0"
LABEL description="Docker container for rust and wasm."

# docker image name
ENV NAME=wasm

# timezone
ENV TZ="Europe/Paris"

# system update
RUN apt-get update
RUN apt-get install -y vim \
	git \
	build-essential

# nodejs
RUN curl -sL https://deb.nodesource.com/setup_10.x | bash -
RUN  apt-get install -y nodejs

# system clean
RUN apt-get clean
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# wasm pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# cargo generate
RUN cargo install cargo-generate

# term
ENV TERM=xterm

# healthcheck
COPY config/healthcheck /usr/local/bin/
RUN chmod 744 /usr/local/bin/healthcheck

# port
EXPOSE 8080
