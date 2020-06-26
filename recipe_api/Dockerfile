FROM rust:latest AS builder
COPY . .
RUN cargo build --release

FROM gcr.io/distroless/cc
COPY --from=builder target/release/recipe_api recipe_api
CMD ["./recipe_api"]