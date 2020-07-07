FROM rust:latest AS builder
RUN rustup component add rustfmt --toolchain 1.44.1-x86_64-unknown-linux-gnu
COPY ./shared ./shared
COPY ./command/Cargo.toml ./command/
RUN mkdir command/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > command/src/main.rs
RUN cd command && cargo build --release
RUN rm -f command/target/release/deps/recipe_command*
COPY ./command ./command
RUN cd command && cargo build --release

FROM gcr.io/distroless/cc
COPY --from=builder command/target/release/recipe_command recipe_command
CMD ["./recipe_command"]
