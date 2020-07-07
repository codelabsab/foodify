"""
cargo-raze crate workspace functions

DO NOT EDIT! Replaced on runs of cargo-raze
"""
load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "new_git_repository")

def _new_http_archive(name, **kwargs):
    if not native.existing_rule(name):
        http_archive(name=name, **kwargs)

def _new_git_repository(name, **kwargs):
    if not native.existing_rule(name):
        new_git_repository(name=name, **kwargs)

def raze_fetch_remote_crates():

    _new_http_archive(
        name = "raze__Inflector__0_11_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/Inflector/Inflector-0.11.4.crate",
        type = "tar.gz",
        strip_prefix = "Inflector-0.11.4",
        build_file = Label("//cargo/remote:Inflector-0.11.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__addr2line__0_12_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/addr2line/addr2line-0.12.2.crate",
        type = "tar.gz",
        strip_prefix = "addr2line-0.12.2",
        build_file = Label("//cargo/remote:addr2line-0.12.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__adler32__1_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/adler32/adler32-1.1.0.crate",
        type = "tar.gz",
        strip_prefix = "adler32-1.1.0",
        build_file = Label("//cargo/remote:adler32-1.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__aho_corasick__0_7_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/aho-corasick/aho-corasick-0.7.13.crate",
        type = "tar.gz",
        strip_prefix = "aho-corasick-0.7.13",
        build_file = Label("//cargo/remote:aho-corasick-0.7.13.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__anyhow__1_0_31",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/anyhow/anyhow-1.0.31.crate",
        type = "tar.gz",
        strip_prefix = "anyhow-1.0.31",
        build_file = Label("//cargo/remote:anyhow-1.0.31.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__arc_swap__0_4_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arc-swap/arc-swap-0.4.7.crate",
        type = "tar.gz",
        strip_prefix = "arc-swap-0.4.7",
        build_file = Label("//cargo/remote:arc-swap-0.4.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__arrayref__0_3_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arrayref/arrayref-0.3.6.crate",
        type = "tar.gz",
        strip_prefix = "arrayref-0.3.6",
        build_file = Label("//cargo/remote:arrayref-0.3.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__arrayvec__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/arrayvec/arrayvec-0.5.1.crate",
        type = "tar.gz",
        strip_prefix = "arrayvec-0.5.1",
        build_file = Label("//cargo/remote:arrayvec-0.5.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_graphql__1_16_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-graphql/async-graphql-1.16.5.crate",
        type = "tar.gz",
        strip_prefix = "async-graphql-1.16.5",
        build_file = Label("//cargo/remote:async-graphql-1.16.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_graphql_derive__1_16_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-graphql-derive/async-graphql-derive-1.16.5.crate",
        type = "tar.gz",
        strip_prefix = "async-graphql-derive-1.16.5",
        build_file = Label("//cargo/remote:async-graphql-derive-1.16.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_graphql_parser__1_14_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-graphql-parser/async-graphql-parser-1.14.7.crate",
        type = "tar.gz",
        strip_prefix = "async-graphql-parser-1.14.7",
        build_file = Label("//cargo/remote:async-graphql-parser-1.14.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_graphql_warp__1_16_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-graphql-warp/async-graphql-warp-1.16.4.crate",
        type = "tar.gz",
        strip_prefix = "async-graphql-warp-1.16.4",
        build_file = Label("//cargo/remote:async-graphql-warp-1.16.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_stream__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-stream/async-stream-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "async-stream-0.2.1",
        build_file = Label("//cargo/remote:async-stream-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_stream_impl__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-stream-impl/async-stream-impl-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "async-stream-impl-0.2.1",
        build_file = Label("//cargo/remote:async-stream-impl-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__async_trait__0_1_36",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/async-trait/async-trait-0.1.36.crate",
        type = "tar.gz",
        strip_prefix = "async-trait-0.1.36",
        build_file = Label("//cargo/remote:async-trait-0.1.36.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__atty__0_2_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/atty/atty-0.2.14.crate",
        type = "tar.gz",
        strip_prefix = "atty-0.2.14",
        build_file = Label("//cargo/remote:atty-0.2.14.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__autocfg__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-0.1.7.crate",
        type = "tar.gz",
        strip_prefix = "autocfg-0.1.7",
        build_file = Label("//cargo/remote:autocfg-0.1.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__autocfg__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/autocfg/autocfg-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "autocfg-1.0.0",
        build_file = Label("//cargo/remote:autocfg-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__backtrace__0_3_49",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/backtrace/backtrace-0.3.49.crate",
        type = "tar.gz",
        strip_prefix = "backtrace-0.3.49",
        build_file = Label("//cargo/remote:backtrace-0.3.49.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__base64__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.11.0.crate",
        type = "tar.gz",
        strip_prefix = "base64-0.11.0",
        build_file = Label("//cargo/remote:base64-0.11.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__base64__0_12_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/base64/base64-0.12.3.crate",
        type = "tar.gz",
        strip_prefix = "base64-0.12.3",
        build_file = Label("//cargo/remote:base64-0.12.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__bitflags__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bitflags/bitflags-1.2.1.crate",
        type = "tar.gz",
        strip_prefix = "bitflags-1.2.1",
        build_file = Label("//cargo/remote:bitflags-1.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__blake2b_simd__0_5_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/blake2b_simd/blake2b_simd-0.5.10.crate",
        type = "tar.gz",
        strip_prefix = "blake2b_simd-0.5.10",
        build_file = Label("//cargo/remote:blake2b_simd-0.5.10.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__block_buffer__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/block-buffer/block-buffer-0.7.3.crate",
        type = "tar.gz",
        strip_prefix = "block-buffer-0.7.3",
        build_file = Label("//cargo/remote:block-buffer-0.7.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__block_padding__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/block-padding/block-padding-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "block-padding-0.1.5",
        build_file = Label("//cargo/remote:block-padding-0.1.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__bson__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bson/bson-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "bson-1.0.0",
        build_file = Label("//cargo/remote:bson-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__buf_redux__0_8_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/buf_redux/buf_redux-0.8.4.crate",
        type = "tar.gz",
        strip_prefix = "buf_redux-0.8.4",
        build_file = Label("//cargo/remote:buf_redux-0.8.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__byte_tools__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byte-tools/byte-tools-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "byte-tools-0.3.1",
        build_file = Label("//cargo/remote:byte-tools-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__byteorder__1_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/byteorder/byteorder-1.3.4.crate",
        type = "tar.gz",
        strip_prefix = "byteorder-1.3.4",
        build_file = Label("//cargo/remote:byteorder-1.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__bytes__0_5_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/bytes/bytes-0.5.5.crate",
        type = "tar.gz",
        strip_prefix = "bytes-0.5.5",
        build_file = Label("//cargo/remote:bytes-0.5.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__cc__1_0_57",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cc/cc-1.0.57.crate",
        type = "tar.gz",
        strip_prefix = "cc-1.0.57",
        build_file = Label("//cargo/remote:cc-1.0.57.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__cfg_if__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cfg-if/cfg-if-0.1.10.crate",
        type = "tar.gz",
        strip_prefix = "cfg-if-0.1.10",
        build_file = Label("//cargo/remote:cfg-if-0.1.10.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__chrono__0_4_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/chrono/chrono-0.4.13.crate",
        type = "tar.gz",
        strip_prefix = "chrono-0.4.13",
        build_file = Label("//cargo/remote:chrono-0.4.13.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__chrono_tz__0_5_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/chrono-tz/chrono-tz-0.5.2.crate",
        type = "tar.gz",
        strip_prefix = "chrono-tz-0.5.2",
        build_file = Label("//cargo/remote:chrono-tz-0.5.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__cloudabi__0_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cloudabi/cloudabi-0.0.3.crate",
        type = "tar.gz",
        strip_prefix = "cloudabi-0.0.3",
        build_file = Label("//cargo/remote:cloudabi-0.0.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__cloudabi__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/cloudabi/cloudabi-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "cloudabi-0.1.0",
        build_file = Label("//cargo/remote:cloudabi-0.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__colored__1_9_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/colored/colored-1.9.3.crate",
        type = "tar.gz",
        strip_prefix = "colored-1.9.3",
        build_file = Label("//cargo/remote:colored-1.9.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__constant_time_eq__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/constant_time_eq/constant_time_eq-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "constant_time_eq-0.1.5",
        build_file = Label("//cargo/remote:constant_time_eq-0.1.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crc32fast__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crc32fast/crc32fast-1.2.0.crate",
        type = "tar.gz",
        strip_prefix = "crc32fast-1.2.0",
        build_file = Label("//cargo/remote:crc32fast-1.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam/crossbeam-0.7.3.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-0.7.3",
        build_file = Label("//cargo/remote:crossbeam-0.7.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam_channel__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-channel/crossbeam-channel-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-channel-0.4.2",
        build_file = Label("//cargo/remote:crossbeam-channel-0.4.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam_deque__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-deque/crossbeam-deque-0.7.3.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-deque-0.7.3",
        build_file = Label("//cargo/remote:crossbeam-deque-0.7.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam_epoch__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-epoch/crossbeam-epoch-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-epoch-0.8.2",
        build_file = Label("//cargo/remote:crossbeam-epoch-0.8.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam_queue__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-queue/crossbeam-queue-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-queue-0.2.3",
        build_file = Label("//cargo/remote:crossbeam-queue-0.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crossbeam_utils__0_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crossbeam-utils/crossbeam-utils-0.7.2.crate",
        type = "tar.gz",
        strip_prefix = "crossbeam-utils-0.7.2",
        build_file = Label("//cargo/remote:crossbeam-utils-0.7.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__crypto_mac__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/crypto-mac/crypto-mac-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "crypto-mac-0.7.0",
        build_file = Label("//cargo/remote:crypto-mac-0.7.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__derive_more__0_99_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/derive_more/derive_more-0.99.9.crate",
        type = "tar.gz",
        strip_prefix = "derive_more-0.99.9",
        build_file = Label("//cargo/remote:derive_more-0.99.9.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__digest__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/digest/digest-0.8.1.crate",
        type = "tar.gz",
        strip_prefix = "digest-0.8.1",
        build_file = Label("//cargo/remote:digest-0.8.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__dirs__2_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dirs/dirs-2.0.2.crate",
        type = "tar.gz",
        strip_prefix = "dirs-2.0.2",
        build_file = Label("//cargo/remote:dirs-2.0.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__dirs_sys__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dirs-sys/dirs-sys-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "dirs-sys-0.3.5",
        build_file = Label("//cargo/remote:dirs-sys-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__dtoa__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/dtoa/dtoa-0.4.6.crate",
        type = "tar.gz",
        strip_prefix = "dtoa-0.4.6",
        build_file = Label("//cargo/remote:dtoa-0.4.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__either__1_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/either/either-1.5.3.crate",
        type = "tar.gz",
        strip_prefix = "either-1.5.3",
        build_file = Label("//cargo/remote:either-1.5.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__encoding_rs__0_8_23",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/encoding_rs/encoding_rs-0.8.23.crate",
        type = "tar.gz",
        strip_prefix = "encoding_rs-0.8.23",
        build_file = Label("//cargo/remote:encoding_rs-0.8.23.BUILD.bazel"),
    )

    _new_git_repository(
        name = "raze__eventific__0_1_18",
        remote = "https://github.com/Joatin/eventific",
        commit = "0cedf0649e4dc3369aa23d0eb91ad142aca1c8f9",
        build_file = Label("//cargo/remote:eventific-0.1.18.BUILD.bazel"),
        init_submodules = True,
    )

    _new_git_repository(
        name = "raze__eventific_postgres__0_1_3",
        remote = "https://github.com/Joatin/eventific",
        commit = "0cedf0649e4dc3369aa23d0eb91ad142aca1c8f9",
        build_file = Label("//cargo/remote:eventific_postgres-0.1.3.BUILD.bazel"),
        init_submodules = True,
    )

    _new_http_archive(
        name = "raze__failure__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure/failure-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "failure-0.1.8",
        build_file = Label("//cargo/remote:failure-0.1.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__failure_derive__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/failure_derive/failure_derive-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "failure_derive-0.1.8",
        build_file = Label("//cargo/remote:failure_derive-0.1.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fake_simd__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fake-simd/fake-simd-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "fake-simd-0.1.2",
        build_file = Label("//cargo/remote:fake-simd-0.1.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fallible_iterator__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fallible-iterator/fallible-iterator-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "fallible-iterator-0.2.0",
        build_file = Label("//cargo/remote:fallible-iterator-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fixedbitset__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fixedbitset/fixedbitset-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "fixedbitset-0.2.0",
        build_file = Label("//cargo/remote:fixedbitset-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fnv__1_0_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fnv/fnv-1.0.7.crate",
        type = "tar.gz",
        strip_prefix = "fnv-1.0.7",
        build_file = Label("//cargo/remote:fnv-1.0.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fuchsia_cprng__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-cprng/fuchsia-cprng-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-cprng-0.1.1",
        build_file = Label("//cargo/remote:fuchsia-cprng-0.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon/fuchsia-zircon-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-zircon-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-0.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__fuchsia_zircon_sys__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/fuchsia-zircon-sys/fuchsia-zircon-sys-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "fuchsia-zircon-sys-0.3.3",
        build_file = Label("//cargo/remote:fuchsia-zircon-sys-0.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures/futures-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-0.3.5",
        build_file = Label("//cargo/remote:futures-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_channel__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-channel/futures-channel-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-channel-0.3.5",
        build_file = Label("//cargo/remote:futures-channel-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_core__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-core/futures-core-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-core-0.3.5",
        build_file = Label("//cargo/remote:futures-core-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_executor__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-executor/futures-executor-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-executor-0.3.5",
        build_file = Label("//cargo/remote:futures-executor-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_io__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-io/futures-io-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-io-0.3.5",
        build_file = Label("//cargo/remote:futures-io-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_macro__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-macro/futures-macro-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-macro-0.3.5",
        build_file = Label("//cargo/remote:futures-macro-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_sink__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-sink/futures-sink-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-sink-0.3.5",
        build_file = Label("//cargo/remote:futures-sink-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_task__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-task/futures-task-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-task-0.3.5",
        build_file = Label("//cargo/remote:futures-task-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__futures_util__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/futures-util/futures-util-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "futures-util-0.3.5",
        build_file = Label("//cargo/remote:futures-util-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__generator__0_6_21",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/generator/generator-0.6.21.crate",
        type = "tar.gz",
        strip_prefix = "generator-0.6.21",
        build_file = Label("//cargo/remote:generator-0.6.21.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__generic_array__0_12_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/generic-array/generic-array-0.12.3.crate",
        type = "tar.gz",
        strip_prefix = "generic-array-0.12.3",
        build_file = Label("//cargo/remote:generic-array-0.12.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__getrandom__0_1_14",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/getrandom/getrandom-0.1.14.crate",
        type = "tar.gz",
        strip_prefix = "getrandom-0.1.14",
        build_file = Label("//cargo/remote:getrandom-0.1.14.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__gimli__0_21_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/gimli/gimli-0.21.0.crate",
        type = "tar.gz",
        strip_prefix = "gimli-0.21.0",
        build_file = Label("//cargo/remote:gimli-0.21.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__h2__0_2_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/h2/h2-0.2.5.crate",
        type = "tar.gz",
        strip_prefix = "h2-0.2.5",
        build_file = Label("//cargo/remote:h2-0.2.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__headers__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/headers/headers-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "headers-0.3.2",
        build_file = Label("//cargo/remote:headers-0.3.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__headers_core__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/headers-core/headers-core-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "headers-core-0.2.0",
        build_file = Label("//cargo/remote:headers-core-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__heck__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/heck/heck-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "heck-0.3.1",
        build_file = Label("//cargo/remote:heck-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__hermit_abi__0_1_15",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hermit-abi/hermit-abi-0.1.15.crate",
        type = "tar.gz",
        strip_prefix = "hermit-abi-0.1.15",
        build_file = Label("//cargo/remote:hermit-abi-0.1.15.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__hex__0_3_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hex/hex-0.3.2.crate",
        type = "tar.gz",
        strip_prefix = "hex-0.3.2",
        build_file = Label("//cargo/remote:hex-0.3.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__hmac__0_7_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hmac/hmac-0.7.1.crate",
        type = "tar.gz",
        strip_prefix = "hmac-0.7.1",
        build_file = Label("//cargo/remote:hmac-0.7.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__http__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http/http-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "http-0.2.1",
        build_file = Label("//cargo/remote:http-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__http_body__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/http-body/http-body-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "http-body-0.3.1",
        build_file = Label("//cargo/remote:http-body-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__httparse__1_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/httparse/httparse-1.3.4.crate",
        type = "tar.gz",
        strip_prefix = "httparse-1.3.4",
        build_file = Label("//cargo/remote:httparse-1.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__hyper__0_13_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/hyper/hyper-0.13.6.crate",
        type = "tar.gz",
        strip_prefix = "hyper-0.13.6",
        build_file = Label("//cargo/remote:hyper-0.13.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__idna__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/idna/idna-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "idna-0.2.0",
        build_file = Label("//cargo/remote:idna-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__indexmap__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/indexmap/indexmap-1.4.0.crate",
        type = "tar.gz",
        strip_prefix = "indexmap-1.4.0",
        build_file = Label("//cargo/remote:indexmap-1.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__input_buffer__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/input_buffer/input_buffer-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "input_buffer-0.3.1",
        build_file = Label("//cargo/remote:input_buffer-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__instant__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/instant/instant-0.1.6.crate",
        type = "tar.gz",
        strip_prefix = "instant-0.1.6",
        build_file = Label("//cargo/remote:instant-0.1.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__iovec__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/iovec/iovec-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "iovec-0.1.4",
        build_file = Label("//cargo/remote:iovec-0.1.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__itertools__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "itertools-0.8.2",
        build_file = Label("//cargo/remote:itertools-0.8.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__itertools__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itertools/itertools-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "itertools-0.9.0",
        build_file = Label("//cargo/remote:itertools-0.9.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__itoa__0_4_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/itoa/itoa-0.4.6.crate",
        type = "tar.gz",
        strip_prefix = "itoa-0.4.6",
        build_file = Label("//cargo/remote:itoa-0.4.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__kernel32_sys__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/kernel32-sys/kernel32-sys-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "kernel32-sys-0.2.2",
        build_file = Label("//cargo/remote:kernel32-sys-0.2.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__lazy_static__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lazy_static/lazy_static-1.4.0.crate",
        type = "tar.gz",
        strip_prefix = "lazy_static-1.4.0",
        build_file = Label("//cargo/remote:lazy_static-1.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__libc__0_2_71",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libc/libc-0.2.71.crate",
        type = "tar.gz",
        strip_prefix = "libc-0.2.71",
        build_file = Label("//cargo/remote:libc-0.2.71.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__libflate__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libflate/libflate-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "libflate-1.0.2",
        build_file = Label("//cargo/remote:libflate-1.0.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__libflate_lz77__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/libflate_lz77/libflate_lz77-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "libflate_lz77-1.0.0",
        build_file = Label("//cargo/remote:libflate_lz77-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__linked_hash_map__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/linked-hash-map/linked-hash-map-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "linked-hash-map-0.5.3",
        build_file = Label("//cargo/remote:linked-hash-map-0.5.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__lock_api__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lock_api/lock_api-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "lock_api-0.3.4",
        build_file = Label("//cargo/remote:lock_api-0.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__lock_api__0_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/lock_api/lock_api-0.4.1.crate",
        type = "tar.gz",
        strip_prefix = "lock_api-0.4.1",
        build_file = Label("//cargo/remote:lock_api-0.4.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__log__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.3.9.crate",
        type = "tar.gz",
        strip_prefix = "log-0.3.9",
        build_file = Label("//cargo/remote:log-0.3.9.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__log__0_4_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/log/log-0.4.8.crate",
        type = "tar.gz",
        strip_prefix = "log-0.4.8",
        build_file = Label("//cargo/remote:log-0.4.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__loom__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/loom/loom-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "loom-0.3.4",
        build_file = Label("//cargo/remote:loom-0.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__maplit__1_0_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/maplit/maplit-1.0.2.crate",
        type = "tar.gz",
        strip_prefix = "maplit-1.0.2",
        build_file = Label("//cargo/remote:maplit-1.0.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__matches__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/matches/matches-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "matches-0.1.8",
        build_file = Label("//cargo/remote:matches-0.1.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__maybe_uninit__2_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/maybe-uninit/maybe-uninit-2.0.0.crate",
        type = "tar.gz",
        strip_prefix = "maybe-uninit-2.0.0",
        build_file = Label("//cargo/remote:maybe-uninit-2.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__md5__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/md5/md5-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "md5-0.6.1",
        build_file = Label("//cargo/remote:md5-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__md5__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/md5/md5-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "md5-0.7.0",
        build_file = Label("//cargo/remote:md5-0.7.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__memchr__2_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memchr/memchr-2.3.3.crate",
        type = "tar.gz",
        strip_prefix = "memchr-2.3.3",
        build_file = Label("//cargo/remote:memchr-2.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__memoffset__0_5_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/memoffset/memoffset-0.5.5.crate",
        type = "tar.gz",
        strip_prefix = "memoffset-0.5.5",
        build_file = Label("//cargo/remote:memoffset-0.5.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mime__0_2_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime/mime-0.2.6.crate",
        type = "tar.gz",
        strip_prefix = "mime-0.2.6",
        build_file = Label("//cargo/remote:mime-0.2.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mime__0_3_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime/mime-0.3.16.crate",
        type = "tar.gz",
        strip_prefix = "mime-0.3.16",
        build_file = Label("//cargo/remote:mime-0.3.16.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mime_guess__1_8_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime_guess/mime_guess-1.8.8.crate",
        type = "tar.gz",
        strip_prefix = "mime_guess-1.8.8",
        build_file = Label("//cargo/remote:mime_guess-1.8.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mime_guess__2_0_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mime_guess/mime_guess-2.0.3.crate",
        type = "tar.gz",
        strip_prefix = "mime_guess-2.0.3",
        build_file = Label("//cargo/remote:mime_guess-2.0.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__miniz_oxide__0_3_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miniz_oxide/miniz_oxide-0.3.7.crate",
        type = "tar.gz",
        strip_prefix = "miniz_oxide-0.3.7",
        build_file = Label("//cargo/remote:miniz_oxide-0.3.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mio__0_6_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio/mio-0.6.22.crate",
        type = "tar.gz",
        strip_prefix = "mio-0.6.22",
        build_file = Label("//cargo/remote:mio-0.6.22.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mio_named_pipes__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-named-pipes/mio-named-pipes-0.1.7.crate",
        type = "tar.gz",
        strip_prefix = "mio-named-pipes-0.1.7",
        build_file = Label("//cargo/remote:mio-named-pipes-0.1.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__mio_uds__0_6_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/mio-uds/mio-uds-0.6.8.crate",
        type = "tar.gz",
        strip_prefix = "mio-uds-0.6.8",
        build_file = Label("//cargo/remote:mio-uds-0.6.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__miow__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "miow-0.2.1",
        build_file = Label("//cargo/remote:miow-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__miow__0_3_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/miow/miow-0.3.5.crate",
        type = "tar.gz",
        strip_prefix = "miow-0.3.5",
        build_file = Label("//cargo/remote:miow-0.3.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__multer__1_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/multer/multer-1.2.1.crate",
        type = "tar.gz",
        strip_prefix = "multer-1.2.1",
        build_file = Label("//cargo/remote:multer-1.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__multimap__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/multimap/multimap-0.8.1.crate",
        type = "tar.gz",
        strip_prefix = "multimap-0.8.1",
        build_file = Label("//cargo/remote:multimap-0.8.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__multipart__0_16_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/multipart/multipart-0.16.1.crate",
        type = "tar.gz",
        strip_prefix = "multipart-0.16.1",
        build_file = Label("//cargo/remote:multipart-0.16.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__net2__0_2_34",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/net2/net2-0.2.34.crate",
        type = "tar.gz",
        strip_prefix = "net2-0.2.34",
        build_file = Label("//cargo/remote:net2-0.2.34.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__num_integer__0_1_43",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-integer/num-integer-0.1.43.crate",
        type = "tar.gz",
        strip_prefix = "num-integer-0.1.43",
        build_file = Label("//cargo/remote:num-integer-0.1.43.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__num_traits__0_2_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num-traits/num-traits-0.2.12.crate",
        type = "tar.gz",
        strip_prefix = "num-traits-0.2.12",
        build_file = Label("//cargo/remote:num-traits-0.2.12.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__num_cpus__1_13_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/num_cpus/num_cpus-1.13.0.crate",
        type = "tar.gz",
        strip_prefix = "num_cpus-1.13.0",
        build_file = Label("//cargo/remote:num_cpus-1.13.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__object__0_20_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/object/object-0.20.0.crate",
        type = "tar.gz",
        strip_prefix = "object-0.20.0",
        build_file = Label("//cargo/remote:object-0.20.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__once_cell__1_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/once_cell/once_cell-1.4.0.crate",
        type = "tar.gz",
        strip_prefix = "once_cell-1.4.0",
        build_file = Label("//cargo/remote:once_cell-1.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__opaque_debug__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/opaque-debug/opaque-debug-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "opaque-debug-0.2.3",
        build_file = Label("//cargo/remote:opaque-debug-0.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__parking_lot__0_10_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.10.2.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot-0.10.2",
        build_file = Label("//cargo/remote:parking_lot-0.10.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__parking_lot__0_11_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot/parking_lot-0.11.0.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot-0.11.0",
        build_file = Label("//cargo/remote:parking_lot-0.11.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_7_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.7.2.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot_core-0.7.2",
        build_file = Label("//cargo/remote:parking_lot_core-0.7.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__parking_lot_core__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parking_lot_core/parking_lot_core-0.8.0.crate",
        type = "tar.gz",
        strip_prefix = "parking_lot_core-0.8.0",
        build_file = Label("//cargo/remote:parking_lot_core-0.8.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__parse_zoneinfo__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/parse-zoneinfo/parse-zoneinfo-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "parse-zoneinfo-0.3.0",
        build_file = Label("//cargo/remote:parse-zoneinfo-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__percent_encoding__2_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/percent-encoding/percent-encoding-2.1.0.crate",
        type = "tar.gz",
        strip_prefix = "percent-encoding-2.1.0",
        build_file = Label("//cargo/remote:percent-encoding-2.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pest__2_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pest/pest-2.1.3.crate",
        type = "tar.gz",
        strip_prefix = "pest-2.1.3",
        build_file = Label("//cargo/remote:pest-2.1.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pest_derive__2_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pest_derive/pest_derive-2.1.0.crate",
        type = "tar.gz",
        strip_prefix = "pest_derive-2.1.0",
        build_file = Label("//cargo/remote:pest_derive-2.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pest_generator__2_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pest_generator/pest_generator-2.1.3.crate",
        type = "tar.gz",
        strip_prefix = "pest_generator-2.1.3",
        build_file = Label("//cargo/remote:pest_generator-2.1.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pest_meta__2_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pest_meta/pest_meta-2.1.3.crate",
        type = "tar.gz",
        strip_prefix = "pest_meta-2.1.3",
        build_file = Label("//cargo/remote:pest_meta-2.1.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__petgraph__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/petgraph/petgraph-0.5.1.crate",
        type = "tar.gz",
        strip_prefix = "petgraph-0.5.1",
        build_file = Label("//cargo/remote:petgraph-0.5.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf__0_7_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf/phf-0.7.24.crate",
        type = "tar.gz",
        strip_prefix = "phf-0.7.24",
        build_file = Label("//cargo/remote:phf-0.7.24.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf/phf-0.8.0.crate",
        type = "tar.gz",
        strip_prefix = "phf-0.8.0",
        build_file = Label("//cargo/remote:phf-0.8.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf_codegen__0_7_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_codegen/phf_codegen-0.7.24.crate",
        type = "tar.gz",
        strip_prefix = "phf_codegen-0.7.24",
        build_file = Label("//cargo/remote:phf_codegen-0.7.24.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf_generator__0_7_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_generator/phf_generator-0.7.24.crate",
        type = "tar.gz",
        strip_prefix = "phf_generator-0.7.24",
        build_file = Label("//cargo/remote:phf_generator-0.7.24.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf_shared__0_7_24",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_shared/phf_shared-0.7.24.crate",
        type = "tar.gz",
        strip_prefix = "phf_shared-0.7.24",
        build_file = Label("//cargo/remote:phf_shared-0.7.24.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__phf_shared__0_8_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/phf_shared/phf_shared-0.8.0.crate",
        type = "tar.gz",
        strip_prefix = "phf_shared-0.8.0",
        build_file = Label("//cargo/remote:phf_shared-0.8.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pin_project__0_4_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project/pin-project-0.4.22.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-0.4.22",
        build_file = Label("//cargo/remote:pin-project-0.4.22.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pin_project_internal__0_4_22",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-internal/pin-project-internal-0.4.22.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-internal-0.4.22",
        build_file = Label("//cargo/remote:pin-project-internal-0.4.22.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pin_project_lite__0_1_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-project-lite/pin-project-lite-0.1.7.crate",
        type = "tar.gz",
        strip_prefix = "pin-project-lite-0.1.7",
        build_file = Label("//cargo/remote:pin-project-lite-0.1.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__pin_utils__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/pin-utils/pin-utils-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "pin-utils-0.1.0",
        build_file = Label("//cargo/remote:pin-utils-0.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__postgres_protocol__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/postgres-protocol/postgres-protocol-0.5.1.crate",
        type = "tar.gz",
        strip_prefix = "postgres-protocol-0.5.1",
        build_file = Label("//cargo/remote:postgres-protocol-0.5.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__postgres_types__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/postgres-types/postgres-types-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "postgres-types-0.1.2",
        build_file = Label("//cargo/remote:postgres-types-0.1.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__ppv_lite86__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ppv-lite86/ppv-lite86-0.2.8.crate",
        type = "tar.gz",
        strip_prefix = "ppv-lite86-0.2.8",
        build_file = Label("//cargo/remote:ppv-lite86-0.2.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__proc_macro_crate__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro-crate/proc-macro-crate-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro-crate-0.1.4",
        build_file = Label("//cargo/remote:proc-macro-crate-0.1.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__proc_macro_hack__0_5_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro-hack/proc-macro-hack-0.5.16.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro-hack-0.5.16",
        build_file = Label("//cargo/remote:proc-macro-hack-0.5.16.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__proc_macro_nested__0_1_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro-nested/proc-macro-nested-0.1.6.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro-nested-0.1.6",
        build_file = Label("//cargo/remote:proc-macro-nested-0.1.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__proc_macro2__1_0_18",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/proc-macro2/proc-macro2-1.0.18.crate",
        type = "tar.gz",
        strip_prefix = "proc-macro2-1.0.18",
        build_file = Label("//cargo/remote:proc-macro2-1.0.18.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__prometheus__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prometheus/prometheus-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "prometheus-0.9.0",
        build_file = Label("//cargo/remote:prometheus-0.9.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__prost__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost/prost-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "prost-0.6.1",
        build_file = Label("//cargo/remote:prost-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__prost_build__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-build/prost-build-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "prost-build-0.6.1",
        build_file = Label("//cargo/remote:prost-build-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__prost_derive__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-derive/prost-derive-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "prost-derive-0.6.1",
        build_file = Label("//cargo/remote:prost-derive-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__prost_types__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/prost-types/prost-types-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "prost-types-0.6.1",
        build_file = Label("//cargo/remote:prost-types-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__protobuf__2_16_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/protobuf/protobuf-2.16.2.crate",
        type = "tar.gz",
        strip_prefix = "protobuf-2.16.2",
        patches = [
            "//cargo:protobuf.patch",
        ],
        build_file = Label("//cargo/remote:protobuf-2.16.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__quick_error__1_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quick-error/quick-error-1.2.3.crate",
        type = "tar.gz",
        strip_prefix = "quick-error-1.2.3",
        build_file = Label("//cargo/remote:quick-error-1.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__quote__1_0_7",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/quote/quote-1.0.7.crate",
        type = "tar.gz",
        strip_prefix = "quote-1.0.7",
        build_file = Label("//cargo/remote:quote-1.0.7.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand__0_6_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.6.5.crate",
        type = "tar.gz",
        strip_prefix = "rand-0.6.5",
        build_file = Label("//cargo/remote:rand-0.6.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand__0_7_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand/rand-0.7.3.crate",
        type = "tar.gz",
        strip_prefix = "rand-0.7.3",
        build_file = Label("//cargo/remote:rand-0.7.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_chacha-0.1.1",
        build_file = Label("//cargo/remote:rand_chacha-0.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_chacha__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_chacha/rand_chacha-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "rand_chacha-0.2.2",
        build_file = Label("//cargo/remote:rand_chacha-0.2.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.3.1",
        build_file = Label("//cargo/remote:rand_core-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.4.2",
        build_file = Label("//cargo/remote:rand_core-0.4.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_core__0_5_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_core/rand_core-0.5.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_core-0.5.1",
        build_file = Label("//cargo/remote:rand_core-0.5.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_hc__0_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.1.0.crate",
        type = "tar.gz",
        strip_prefix = "rand_hc-0.1.0",
        build_file = Label("//cargo/remote:rand_hc-0.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_hc__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_hc/rand_hc-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "rand_hc-0.2.0",
        build_file = Label("//cargo/remote:rand_hc-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_isaac__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_isaac/rand_isaac-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_isaac-0.1.1",
        build_file = Label("//cargo/remote:rand_isaac-0.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_jitter__0_1_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_jitter/rand_jitter-0.1.4.crate",
        type = "tar.gz",
        strip_prefix = "rand_jitter-0.1.4",
        build_file = Label("//cargo/remote:rand_jitter-0.1.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_os__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_os/rand_os-0.1.3.crate",
        type = "tar.gz",
        strip_prefix = "rand_os-0.1.3",
        build_file = Label("//cargo/remote:rand_os-0.1.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_pcg__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "rand_pcg-0.1.2",
        build_file = Label("//cargo/remote:rand_pcg-0.1.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_pcg__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_pcg/rand_pcg-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_pcg-0.2.1",
        build_file = Label("//cargo/remote:rand_pcg-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rand_xorshift__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rand_xorshift/rand_xorshift-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "rand_xorshift-0.1.1",
        build_file = Label("//cargo/remote:rand_xorshift-0.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rdrand__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rdrand/rdrand-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "rdrand-0.4.0",
        build_file = Label("//cargo/remote:rdrand-0.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__redox_syscall__0_1_56",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_syscall/redox_syscall-0.1.56.crate",
        type = "tar.gz",
        strip_prefix = "redox_syscall-0.1.56",
        build_file = Label("//cargo/remote:redox_syscall-0.1.56.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__redox_users__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/redox_users/redox_users-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "redox_users-0.3.4",
        build_file = Label("//cargo/remote:redox_users-0.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__regex__1_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex/regex-1.3.9.crate",
        type = "tar.gz",
        strip_prefix = "regex-1.3.9",
        build_file = Label("//cargo/remote:regex-1.3.9.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__regex_syntax__0_6_18",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/regex-syntax/regex-syntax-0.6.18.crate",
        type = "tar.gz",
        strip_prefix = "regex-syntax-0.6.18",
        build_file = Label("//cargo/remote:regex-syntax-0.6.18.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__remove_dir_all__0_5_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/remove_dir_all/remove_dir_all-0.5.3.crate",
        type = "tar.gz",
        strip_prefix = "remove_dir_all-0.5.3",
        build_file = Label("//cargo/remote:remove_dir_all-0.5.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rle_decode_fast__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rle-decode-fast/rle-decode-fast-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "rle-decode-fast-1.0.1",
        build_file = Label("//cargo/remote:rle-decode-fast-1.0.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rust_argon2__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rust-argon2/rust-argon2-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "rust-argon2-0.7.0",
        build_file = Label("//cargo/remote:rust-argon2-0.7.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rustc_demangle__0_1_16",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc-demangle/rustc-demangle-0.1.16.crate",
        type = "tar.gz",
        strip_prefix = "rustc-demangle-0.1.16",
        build_file = Label("//cargo/remote:rustc-demangle-0.1.16.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__rustc_version__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/rustc_version/rustc_version-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "rustc_version-0.2.3",
        build_file = Label("//cargo/remote:rustc_version-0.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__ryu__1_0_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ryu/ryu-1.0.5.crate",
        type = "tar.gz",
        strip_prefix = "ryu-1.0.5",
        build_file = Label("//cargo/remote:ryu-1.0.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__safemem__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/safemem/safemem-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "safemem-0.3.3",
        build_file = Label("//cargo/remote:safemem-0.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__scoped_tls__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scoped-tls/scoped-tls-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "scoped-tls-0.1.2",
        build_file = Label("//cargo/remote:scoped-tls-0.1.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__scoped_tls__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scoped-tls/scoped-tls-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "scoped-tls-1.0.0",
        build_file = Label("//cargo/remote:scoped-tls-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__scopeguard__1_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/scopeguard/scopeguard-1.1.0.crate",
        type = "tar.gz",
        strip_prefix = "scopeguard-1.1.0",
        build_file = Label("//cargo/remote:scopeguard-1.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__semver__0_9_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver/semver-0.9.0.crate",
        type = "tar.gz",
        strip_prefix = "semver-0.9.0",
        build_file = Label("//cargo/remote:semver-0.9.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__semver_parser__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/semver-parser/semver-parser-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "semver-parser-0.7.0",
        build_file = Label("//cargo/remote:semver-parser-0.7.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__serde__1_0_114",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde/serde-1.0.114.crate",
        type = "tar.gz",
        strip_prefix = "serde-1.0.114",
        build_file = Label("//cargo/remote:serde-1.0.114.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__serde_derive__1_0_114",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_derive/serde_derive-1.0.114.crate",
        type = "tar.gz",
        strip_prefix = "serde_derive-1.0.114",
        build_file = Label("//cargo/remote:serde_derive-1.0.114.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__serde_json__1_0_56",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_json/serde_json-1.0.56.crate",
        type = "tar.gz",
        strip_prefix = "serde_json-1.0.56",
        build_file = Label("//cargo/remote:serde_json-1.0.56.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__serde_urlencoded__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/serde_urlencoded/serde_urlencoded-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "serde_urlencoded-0.6.1",
        build_file = Label("//cargo/remote:serde_urlencoded-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__sha_1__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/sha-1/sha-1-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "sha-1-0.8.2",
        build_file = Label("//cargo/remote:sha-1-0.8.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__sha2__0_8_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/sha2/sha2-0.8.2.crate",
        type = "tar.gz",
        strip_prefix = "sha2-0.8.2",
        build_file = Label("//cargo/remote:sha2-0.8.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__signal_hook_registry__1_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/signal-hook-registry/signal-hook-registry-1.2.0.crate",
        type = "tar.gz",
        strip_prefix = "signal-hook-registry-1.2.0",
        build_file = Label("//cargo/remote:signal-hook-registry-1.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__siphasher__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/siphasher/siphasher-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "siphasher-0.2.3",
        build_file = Label("//cargo/remote:siphasher-0.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__siphasher__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/siphasher/siphasher-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "siphasher-0.3.3",
        build_file = Label("//cargo/remote:siphasher-0.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slab__0_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slab/slab-0.4.2.crate",
        type = "tar.gz",
        strip_prefix = "slab-0.4.2",
        build_file = Label("//cargo/remote:slab-0.4.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog__2_5_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog/slog-2.5.2.crate",
        type = "tar.gz",
        strip_prefix = "slog-2.5.2",
        build_file = Label("//cargo/remote:slog-2.5.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog_async__2_5_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-async/slog-async-2.5.0.crate",
        type = "tar.gz",
        strip_prefix = "slog-async-2.5.0",
        build_file = Label("//cargo/remote:slog-async-2.5.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog_kvfilter__0_7_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-kvfilter/slog-kvfilter-0.7.0.crate",
        type = "tar.gz",
        strip_prefix = "slog-kvfilter-0.7.0",
        build_file = Label("//cargo/remote:slog-kvfilter-0.7.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog_scope__4_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-scope/slog-scope-4.3.0.crate",
        type = "tar.gz",
        strip_prefix = "slog-scope-4.3.0",
        build_file = Label("//cargo/remote:slog-scope-4.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog_stdlog__4_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-stdlog/slog-stdlog-4.0.0.crate",
        type = "tar.gz",
        strip_prefix = "slog-stdlog-4.0.0",
        build_file = Label("//cargo/remote:slog-stdlog-4.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__slog_term__2_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/slog-term/slog-term-2.6.0.crate",
        type = "tar.gz",
        strip_prefix = "slog-term-2.6.0",
        build_file = Label("//cargo/remote:slog-term-2.6.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__sloggers__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/sloggers/sloggers-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "sloggers-1.0.1",
        build_file = Label("//cargo/remote:sloggers-1.0.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__smallvec__1_4_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/smallvec/smallvec-1.4.1.crate",
        type = "tar.gz",
        strip_prefix = "smallvec-1.4.1",
        build_file = Label("//cargo/remote:smallvec-1.4.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__socket2__0_3_12",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/socket2/socket2-0.3.12.crate",
        type = "tar.gz",
        strip_prefix = "socket2-0.3.12",
        build_file = Label("//cargo/remote:socket2-0.3.12.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__spin__0_5_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/spin/spin-0.5.2.crate",
        type = "tar.gz",
        strip_prefix = "spin-0.5.2",
        build_file = Label("//cargo/remote:spin-0.5.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__stringprep__0_1_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/stringprep/stringprep-0.1.2.crate",
        type = "tar.gz",
        strip_prefix = "stringprep-0.1.2",
        build_file = Label("//cargo/remote:stringprep-0.1.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__strum__0_18_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/strum/strum-0.18.0.crate",
        type = "tar.gz",
        strip_prefix = "strum-0.18.0",
        build_file = Label("//cargo/remote:strum-0.18.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__strum_macros__0_18_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/strum_macros/strum_macros-0.18.0.crate",
        type = "tar.gz",
        strip_prefix = "strum_macros-0.18.0",
        build_file = Label("//cargo/remote:strum_macros-0.18.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__subtle__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/subtle/subtle-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "subtle-1.0.0",
        build_file = Label("//cargo/remote:subtle-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__syn__1_0_33",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/syn/syn-1.0.33.crate",
        type = "tar.gz",
        strip_prefix = "syn-1.0.33",
        build_file = Label("//cargo/remote:syn-1.0.33.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__synstructure__0_12_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/synstructure/synstructure-0.12.4.crate",
        type = "tar.gz",
        strip_prefix = "synstructure-0.12.4",
        build_file = Label("//cargo/remote:synstructure-0.12.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__take_mut__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/take_mut/take_mut-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "take_mut-0.2.2",
        build_file = Label("//cargo/remote:take_mut-0.2.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tempfile__3_1_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tempfile/tempfile-3.1.0.crate",
        type = "tar.gz",
        strip_prefix = "tempfile-3.1.0",
        build_file = Label("//cargo/remote:tempfile-3.1.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__term__0_6_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/term/term-0.6.1.crate",
        type = "tar.gz",
        strip_prefix = "term-0.6.1",
        build_file = Label("//cargo/remote:term-0.6.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__thiserror__1_0_20",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thiserror/thiserror-1.0.20.crate",
        type = "tar.gz",
        strip_prefix = "thiserror-1.0.20",
        build_file = Label("//cargo/remote:thiserror-1.0.20.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__thiserror_impl__1_0_20",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thiserror-impl/thiserror-impl-1.0.20.crate",
        type = "tar.gz",
        strip_prefix = "thiserror-impl-1.0.20",
        build_file = Label("//cargo/remote:thiserror-impl-1.0.20.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__thread_local__1_0_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/thread_local/thread_local-1.0.1.crate",
        type = "tar.gz",
        strip_prefix = "thread_local-1.0.1",
        build_file = Label("//cargo/remote:thread_local-1.0.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__time__0_1_43",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/time/time-0.1.43.crate",
        type = "tar.gz",
        strip_prefix = "time-0.1.43",
        build_file = Label("//cargo/remote:time-0.1.43.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tinyvec__0_3_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tinyvec/tinyvec-0.3.3.crate",
        type = "tar.gz",
        strip_prefix = "tinyvec-0.3.3",
        build_file = Label("//cargo/remote:tinyvec-0.3.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tokio__0_2_21",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio/tokio-0.2.21.crate",
        type = "tar.gz",
        strip_prefix = "tokio-0.2.21",
        build_file = Label("//cargo/remote:tokio-0.2.21.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tokio_macros__0_2_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-macros/tokio-macros-0.2.5.crate",
        type = "tar.gz",
        strip_prefix = "tokio-macros-0.2.5",
        build_file = Label("//cargo/remote:tokio-macros-0.2.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tokio_postgres__0_5_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-postgres/tokio-postgres-0.5.5.crate",
        type = "tar.gz",
        strip_prefix = "tokio-postgres-0.5.5",
        build_file = Label("//cargo/remote:tokio-postgres-0.5.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tokio_tungstenite__0_10_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-tungstenite/tokio-tungstenite-0.10.1.crate",
        type = "tar.gz",
        strip_prefix = "tokio-tungstenite-0.10.1",
        build_file = Label("//cargo/remote:tokio-tungstenite-0.10.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tokio_util__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tokio-util/tokio-util-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "tokio-util-0.3.1",
        build_file = Label("//cargo/remote:tokio-util-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__toml__0_5_6",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/toml/toml-0.5.6.crate",
        type = "tar.gz",
        strip_prefix = "toml-0.5.6",
        build_file = Label("//cargo/remote:toml-0.5.6.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tonic__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tonic/tonic-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "tonic-0.2.1",
        build_file = Label("//cargo/remote:tonic-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tonic_build__0_2_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tonic-build/tonic-build-0.2.0.crate",
        type = "tar.gz",
        strip_prefix = "tonic-build-0.2.0",
        build_file = Label("//cargo/remote:tonic-build-0.2.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower/tower-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "tower-0.3.1",
        build_file = Label("//cargo/remote:tower-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_balance__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-balance/tower-balance-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-balance-0.3.0",
        build_file = Label("//cargo/remote:tower-balance-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_buffer__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-buffer/tower-buffer-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-buffer-0.3.0",
        build_file = Label("//cargo/remote:tower-buffer-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_discover__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-discover/tower-discover-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-discover-0.3.0",
        build_file = Label("//cargo/remote:tower-discover-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_layer__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-layer/tower-layer-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-layer-0.3.0",
        build_file = Label("//cargo/remote:tower-layer-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_limit__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-limit/tower-limit-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "tower-limit-0.3.1",
        build_file = Label("//cargo/remote:tower-limit-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_load__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-load/tower-load-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-load-0.3.0",
        build_file = Label("//cargo/remote:tower-load-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_load_shed__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-load-shed/tower-load-shed-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-load-shed-0.3.0",
        build_file = Label("//cargo/remote:tower-load-shed-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_make__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-make/tower-make-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-make-0.3.0",
        build_file = Label("//cargo/remote:tower-make-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_ready_cache__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-ready-cache/tower-ready-cache-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "tower-ready-cache-0.3.1",
        build_file = Label("//cargo/remote:tower-ready-cache-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_retry__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-retry/tower-retry-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-retry-0.3.0",
        build_file = Label("//cargo/remote:tower-retry-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_service__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-service/tower-service-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-service-0.3.0",
        build_file = Label("//cargo/remote:tower-service-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_timeout__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-timeout/tower-timeout-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "tower-timeout-0.3.0",
        build_file = Label("//cargo/remote:tower-timeout-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tower_util__0_3_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tower-util/tower-util-0.3.1.crate",
        type = "tar.gz",
        strip_prefix = "tower-util-0.3.1",
        build_file = Label("//cargo/remote:tower-util-0.3.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tracing__0_1_15",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing/tracing-0.1.15.crate",
        type = "tar.gz",
        strip_prefix = "tracing-0.1.15",
        build_file = Label("//cargo/remote:tracing-0.1.15.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tracing_attributes__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-attributes/tracing-attributes-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "tracing-attributes-0.1.8",
        build_file = Label("//cargo/remote:tracing-attributes-0.1.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tracing_core__0_1_10",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-core/tracing-core-0.1.10.crate",
        type = "tar.gz",
        strip_prefix = "tracing-core-0.1.10",
        build_file = Label("//cargo/remote:tracing-core-0.1.10.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tracing_futures__0_2_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tracing-futures/tracing-futures-0.2.4.crate",
        type = "tar.gz",
        strip_prefix = "tracing-futures-0.2.4",
        build_file = Label("//cargo/remote:tracing-futures-0.2.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__trackable__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trackable/trackable-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "trackable-1.0.0",
        build_file = Label("//cargo/remote:trackable-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__trackable_derive__1_0_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/trackable_derive/trackable_derive-1.0.0.crate",
        type = "tar.gz",
        strip_prefix = "trackable_derive-1.0.0",
        build_file = Label("//cargo/remote:trackable_derive-1.0.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__try_lock__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/try-lock/try-lock-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "try-lock-0.2.2",
        build_file = Label("//cargo/remote:try-lock-0.2.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__tungstenite__0_10_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/tungstenite/tungstenite-0.10.1.crate",
        type = "tar.gz",
        strip_prefix = "tungstenite-0.10.1",
        build_file = Label("//cargo/remote:tungstenite-0.10.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__twoway__0_1_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/twoway/twoway-0.1.8.crate",
        type = "tar.gz",
        strip_prefix = "twoway-0.1.8",
        build_file = Label("//cargo/remote:twoway-0.1.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__twoway__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/twoway/twoway-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "twoway-0.2.1",
        build_file = Label("//cargo/remote:twoway-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__typenum__1_12_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/typenum/typenum-1.12.0.crate",
        type = "tar.gz",
        strip_prefix = "typenum-1.12.0",
        patches = [
            "//cargo:typenum.patch",
        ],
        build_file = Label("//cargo/remote:typenum-1.12.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__ucd_trie__0_1_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ucd-trie/ucd-trie-0.1.3.crate",
        type = "tar.gz",
        strip_prefix = "ucd-trie-0.1.3",
        build_file = Label("//cargo/remote:ucd-trie-0.1.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unchecked_index__0_2_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unchecked-index/unchecked-index-0.2.2.crate",
        type = "tar.gz",
        strip_prefix = "unchecked-index-0.2.2",
        build_file = Label("//cargo/remote:unchecked-index-0.2.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicase__1_4_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-1.4.2.crate",
        type = "tar.gz",
        strip_prefix = "unicase-1.4.2",
        build_file = Label("//cargo/remote:unicase-1.4.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicase__2_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicase/unicase-2.6.0.crate",
        type = "tar.gz",
        strip_prefix = "unicase-2.6.0",
        build_file = Label("//cargo/remote:unicase-2.6.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicode_bidi__0_3_4",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-bidi/unicode-bidi-0.3.4.crate",
        type = "tar.gz",
        strip_prefix = "unicode-bidi-0.3.4",
        build_file = Label("//cargo/remote:unicode-bidi-0.3.4.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicode_normalization__0_1_13",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-normalization/unicode-normalization-0.1.13.crate",
        type = "tar.gz",
        strip_prefix = "unicode-normalization-0.1.13",
        build_file = Label("//cargo/remote:unicode-normalization-0.1.13.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicode_segmentation__1_6_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-segmentation/unicode-segmentation-1.6.0.crate",
        type = "tar.gz",
        strip_prefix = "unicode-segmentation-1.6.0",
        build_file = Label("//cargo/remote:unicode-segmentation-1.6.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__unicode_xid__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/unicode-xid/unicode-xid-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "unicode-xid-0.2.1",
        build_file = Label("//cargo/remote:unicode-xid-0.2.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__url__2_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/url/url-2.1.1.crate",
        type = "tar.gz",
        strip_prefix = "url-2.1.1",
        build_file = Label("//cargo/remote:url-2.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__urlencoding__1_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/urlencoding/urlencoding-1.1.1.crate",
        type = "tar.gz",
        strip_prefix = "urlencoding-1.1.1",
        build_file = Label("//cargo/remote:urlencoding-1.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__utf_8__0_7_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/utf-8/utf-8-0.7.5.crate",
        type = "tar.gz",
        strip_prefix = "utf-8-0.7.5",
        build_file = Label("//cargo/remote:utf-8-0.7.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__uuid__0_8_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/uuid/uuid-0.8.1.crate",
        type = "tar.gz",
        strip_prefix = "uuid-0.8.1",
        build_file = Label("//cargo/remote:uuid-0.8.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__version_check__0_1_5",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.1.5.crate",
        type = "tar.gz",
        strip_prefix = "version_check-0.1.5",
        build_file = Label("//cargo/remote:version_check-0.1.5.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__version_check__0_9_2",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/version_check/version_check-0.9.2.crate",
        type = "tar.gz",
        strip_prefix = "version_check-0.9.2",
        build_file = Label("//cargo/remote:version_check-0.9.2.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__want__0_3_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/want/want-0.3.0.crate",
        type = "tar.gz",
        strip_prefix = "want-0.3.0",
        build_file = Label("//cargo/remote:want-0.3.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__warp__0_2_3",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/warp/warp-0.2.3.crate",
        type = "tar.gz",
        strip_prefix = "warp-0.2.3",
        build_file = Label("//cargo/remote:warp-0.2.3.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__wasi__0_9_0_wasi_snapshot_preview1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/wasi/wasi-0.9.0+wasi-snapshot-preview1.crate",
        type = "tar.gz",
        strip_prefix = "wasi-0.9.0+wasi-snapshot-preview1",
        build_file = Label("//cargo/remote:wasi-0.9.0+wasi-snapshot-preview1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__which__3_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/which/which-3.1.1.crate",
        type = "tar.gz",
        strip_prefix = "which-3.1.1",
        build_file = Label("//cargo/remote:which-3.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__winapi__0_2_8",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.2.8.crate",
        type = "tar.gz",
        strip_prefix = "winapi-0.2.8",
        build_file = Label("//cargo/remote:winapi-0.2.8.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__winapi__0_3_9",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi/winapi-0.3.9.crate",
        type = "tar.gz",
        strip_prefix = "winapi-0.3.9",
        build_file = Label("//cargo/remote:winapi-0.3.9.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__winapi_build__0_1_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-build/winapi-build-0.1.1.crate",
        type = "tar.gz",
        strip_prefix = "winapi-build-0.1.1",
        build_file = Label("//cargo/remote:winapi-build-0.1.1.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__winapi_i686_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-i686-pc-windows-gnu/winapi-i686-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "winapi-i686-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-i686-pc-windows-gnu-0.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__winapi_x86_64_pc_windows_gnu__0_4_0",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/winapi-x86_64-pc-windows-gnu/winapi-x86_64-pc-windows-gnu-0.4.0.crate",
        type = "tar.gz",
        strip_prefix = "winapi-x86_64-pc-windows-gnu-0.4.0",
        build_file = Label("//cargo/remote:winapi-x86_64-pc-windows-gnu-0.4.0.BUILD.bazel"),
    )

    _new_http_archive(
        name = "raze__ws2_32_sys__0_2_1",
        url = "https://crates-io.s3-us-west-1.amazonaws.com/crates/ws2_32-sys/ws2_32-sys-0.2.1.crate",
        type = "tar.gz",
        strip_prefix = "ws2_32-sys-0.2.1",
        build_file = Label("//cargo/remote:ws2_32-sys-0.2.1.BUILD.bazel"),
    )

