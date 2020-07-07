FROM rust:latest AS builder
COPY ./shared ./shared
COPY ./query/Cargo.toml ./query/
RUN mkdir query/src && echo "fn main() {println!(\"if you see this, the build broke\")}" > query/src/main.rs
RUN cd query && cargo build --release
RUN rm -f query/target/release/deps/recipe_query*
COPY ./query ./query
RUN cd query && cargo build --release

FROM gcr.io/distroless/cc
COPY --from=builder query/target/release/recipe_query recipe_query
CMD ["./recipe_query"]
