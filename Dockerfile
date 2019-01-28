FROM rust:latest

# Metadata
LABEL mantainer="Gius. Camerlingo <gcamerli@gmail.com>"
LABEL version="1.0"
LABEL description="Docker container for rust and wasm."

# Docker image name
ENV NAME=wasm

# Timezone
ENV TZ="Europe/Paris"

# system update
RUN apt-get update
RUN apt-get install -y vim \
	git \
	zsh \
	nodejs

# wasm pack
RUN curl https://rustwasm.github.io/wasm-pack/installer/init.sh -sSf | sh

# cargo generate
RUN cargo install cargo-generate

# port
EXPOSE 8080
