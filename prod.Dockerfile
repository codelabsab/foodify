FROM debian:10 AS libz

FROM gcr.io/distroless/cc-debian10 AS recipe_command
COPY --from=libz /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so.1
COPY target/recipe_command recipe_command
CMD ["./recipe_command"]

FROM gcr.io/distroless/cc-debian10 AS recipe_query
COPY --from=libz /lib/x86_64-linux-gnu/libz.so.1 /lib/x86_64-linux-gnu/libz.so.1
COPY target/recipe_query recipe_query
CMD ["./recipe_query"]

FROM gcr.io/distroless/cc-debian10 AS api
COPY target/api api
CMD ["./api"]
