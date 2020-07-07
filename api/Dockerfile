FROM rust:latest AS builder
COPY Cargo.toml ./
RUN mkdir src && echo "fn main() {println!(\"if you see this, the build broke\")}" > src/main.rs
RUN cargo build --release
RUN rm -f target/release/deps/api*
COPY . .
RUN cargo build --release

FROM gcr.io/distroless/cc
COPY --from=builder target/release/api api
CMD ["./api"]
