FROM rust:1.44.1 AS builder
RUN apt-get install -y wget
RUN wget https://github.com/Kitware/CMake/releases/download/v3.17.2/cmake-3.17.2-Linux-x86_64.sh \
      -q -O /tmp/cmake-install.sh \
      && chmod u+x /tmp/cmake-install.sh \
      && mkdir /usr/bin/cmake \
      && /tmp/cmake-install.sh --skip-license --prefix=/usr/bin/cmake \
      && rm /tmp/cmake-install.sh


ENV PATH="/usr/bin/cmake/bin:${PATH}"
RUN rustup component add rustfmt --toolchain 1.44.1-x86_64-unknown-linux-gnu
COPY Cargo.toml Cargo.lock ./

COPY ./api/Cargo.toml ./api/
RUN mkdir api/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > api/src/main.rs

COPY ./recipe/command/Cargo.toml ./recipe/command/
RUN mkdir recipe/command/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > recipe/command/src/main.rs

COPY ./recipe/query/Cargo.toml ./recipe/query/
RUN mkdir recipe/query/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > recipe/query/src/main.rs

COPY ./recipe/shared/Cargo.toml ./recipe/shared/
RUN mkdir recipe/shared/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > recipe/shared/src/main.rs

COPY le_chef/Cargo.toml ./le_chef/
RUN mkdir le_chef/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > le_chef/src/main.rs

RUN cargo --locked build

RUN rm -f target/release/deps/recipe_command*
RUN rm -f target/release/deps/recipe_query*
RUN rm -f target/release/deps/recipe_shared*
RUN rm -f target/release/deps/api*


COPY ./api ./api
COPY ./recipe ./recipe
RUN cargo --locked build
RUN ls usr/lib/x86_64-linux-gnu/

FROM gcr.io/distroless/cc-debian10 AS recipe_command
COPY --from=builder /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so.1
COPY --from=builder target/debug/recipe_command recipe_command
CMD ["./recipe_command"]

FROM gcr.io/distroless/cc-debian10 AS recipe_query
COPY --from=builder /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so.1
COPY --from=builder target/debug/recipe_query recipe_query
CMD ["./recipe_query"]

FROM gcr.io/distroless/cc-debian10 AS api
COPY --from=builder target/debug/api api
CMD ["./api"]
