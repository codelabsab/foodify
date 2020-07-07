workspace(
  name = "foodify",
  managed_directories = {"@npm": ["node_modules"]},
)

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:git.bzl", "git_repository")

# Change master to the git tag you want.
http_archive(
    name = "com_grail_bazel_toolchain",
    strip_prefix = "bazel-toolchain-master",
    urls = ["https://github.com/grailbio/bazel-toolchain/archive/master.tar.gz"],
)

load("@com_grail_bazel_toolchain//toolchain:deps.bzl", "bazel_toolchain_dependencies")

bazel_toolchain_dependencies()

load("@com_grail_bazel_toolchain//toolchain:rules.bzl", "llvm_toolchain")

llvm_toolchain(
    name = "llvm_toolchain",
    llvm_version = "10.0.0",
)

load("@llvm_toolchain//:toolchains.bzl", "llvm_register_toolchains")

llvm_register_toolchains()

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "a8d6b1b354d371a646d2f7927319974e0f9e52f73a2452d2b3877118169eb6bb",
    urls = [
        "https://mirror.bazel.build/github.com/bazelbuild/rules_go/releases/download/v0.23.3/rules_go-v0.23.3.tar.gz",
        "https://github.com/bazelbuild/rules_go/releases/download/v0.23.3/rules_go-v0.23.3.tar.gz",
    ],
)

load("@io_bazel_rules_go//go:deps.bzl", "go_rules_dependencies", "go_register_toolchains")

go_rules_dependencies()

go_register_toolchains()

http_archive(
    name = "io_bazel_rules_docker",
    sha256 = "6287241e033d247e9da5ff705dd6ef526bac39ae82f3d17de1b69f8cb313f9cd",
    strip_prefix = "rules_docker-0.14.3",
    urls = ["https://github.com/bazelbuild/rules_docker/releases/download/v0.14.3/rules_docker-v0.14.3.tar.gz"],
)

load(
    "@io_bazel_rules_docker//repositories:repositories.bzl",
    container_repositories = "repositories",
)
container_repositories()

git_repository(
    name = "dataform",
    commit = "de1eb66e558fbd349092d9519a8d5a1edefba94f",
    remote = "https://github.com/dataform-co/dataform.git",
)

load("@dataform//tools/helm:repository_rules.bzl", "helm_chart", "helm_tool")

helm_tool(
    name = "helm_tool",
    version = "v3.2.4"
)

helm_chart(
    name = "prometheus",
    chartname = "prometheus-operator",
    repo_url = "https://charts.bitnami.com/bitnami",
    version = "v0.22.3",
)

helm_chart(
    name = "loki",
    chartname = "loki-stack",
    repo_url = "https://grafana.github.io/loki/charts",
    version = "0.37.3",
)

helm_chart(
    name = "elasticsearch",
    chartname = "elasticsearch",
    repo_url = "https://charts.bitnami.com/bitnami",
    version = "12.4.1",
)

helm_chart(
    name = "kafka",
    chartname = "kafka",
    repo_url = "https://charts.bitnami.com/bitnami",
    version = "11.3.1",
)

helm_chart(
    name = "postgres",
    chartname = "postgresql",
    repo_url = "https://charts.bitnami.com/bitnami",
    version = "8.10.11",
)

http_archive(
    name = "io_bazel_rules_rust",
    sha256 = "6db62cb234fe1dc8267a451565a99d90f2d97ac478e3d87b0851b985f2c69f01",
    strip_prefix = "rules_rust-d2c4b145595fcb17f0a12521686a56b2c4126fd8",
    urls = [
        # Master branch as of 2019-10-07
        "https://github.com/bazelbuild/rules_rust/archive/d2c4b145595fcb17f0a12521686a56b2c4126fd8.tar.gz",
    ],
)

http_archive(
    name = "bazel_skylib",
    sha256 = "9a737999532daca978a158f94e77e9af6a6a169709c0cee274f0a4c3359519bd",
    strip_prefix = "bazel-skylib-1.0.0",
    url = "https://github.com/bazelbuild/bazel-skylib/archive/1.0.0.tar.gz",
)

load("@io_bazel_rules_rust//rust:repositories.bzl", "rust_repositories", "rust_repository_set")
rust_repositories(version = "1.44.1", edition="2018")

rust_repository_set(
  name = "extra",
  exec_triple = "x86_64-apple-darwin",
  extra_target_triples = ["x86_64-unknown-linux-gnu"],
  version = "1.44.1",
  edition = "2018",
)

load("@io_bazel_rules_rust//:workspace.bzl", "bazel_version")
bazel_version(name = "bazel_version")

http_archive(
    name = "io_bazel_rules_k8s",
    sha256 = "d91aeb17bbc619e649f8d32b65d9a8327e5404f451be196990e13f5b7e2d17bb",
    strip_prefix = "rules_k8s-0.4",
    urls = ["https://github.com/bazelbuild/rules_k8s/releases/download/v0.4/rules_k8s-v0.4.tar.gz"],
)

load("@io_bazel_rules_k8s//k8s:k8s.bzl", "k8s_repositories")

k8s_repositories()

load("@io_bazel_rules_k8s//k8s:k8s_go_deps.bzl", k8s_go_deps = "deps")

k8s_go_deps()

load(
    "@io_bazel_rules_docker//rust:image.bzl",
    _rust_image_repos = "repositories",
)

_rust_image_repos()

load("//cargo:crates.bzl", "raze_fetch_remote_crates")

raze_fetch_remote_crates()

# PROTOC
http_archive(
    name = "com_google_protobuf",
    sha256 = "cf754718b0aa945b00550ed7962ddc167167bd922b842199eeb6505e6f344852",
    strip_prefix = "protobuf-3.11.3",
    urls = [
        "https://mirror.bazel.build/github.com/protocolbuffers/protobuf/archive/v3.11.3.tar.gz",
        "https://github.com/protocolbuffers/protobuf/archive/v3.11.3.tar.gz",
    ]
)

http_archive(
    name = "rules_cc",
    sha256 = "bb8320b0bc1d8d01dc8c8e8c50edced8553655c03776960c1287d03dfbcac3e5",
    strip_prefix = "rules_cc-401380cd2279b83da0dcb86ecbac04a04805405b",
    urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_cc/archive/401380cd2279b83da0dcb86ecbac04a04805405b.tar.gz",
            "https://github.com/bazelbuild/rules_cc/archive/401380cd2279b83da0dcb86ecbac04a04805405b.tar.gz",
    ]
)

http_archive(
    name = "rules_java",
    sha256 = "4e2f33528a66e3a9909910eaa5a562fb22f5b422513cdc3816fd01fbb6e2d08d",
    strip_prefix = "rules_java-166a046a27e118d578127759b413ee0b06aca3cd",
    urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_java/archive/166a046a27e118d578127759b413ee0b06aca3cd.tar.gz",
            "https://github.com/bazelbuild/rules_java/archive/166a046a27e118d578127759b413ee0b06aca3cd.tar.gz",
    ]
)

http_archive(
    name = "rules_python",
    sha256 = "e5470e92a18aa51830db99a4d9c492cc613761d5bdb7131c04bd92b9834380f6",
    strip_prefix = "rules_python-4b84ad270387a7c439ebdccfd530e2339601ef27",
    urls = [
            "https://mirror.bazel.build/github.com/bazelbuild/rules_python/archive/4b84ad270387a7c439ebdccfd530e2339601ef27.tar.gz",
            "https://github.com/bazelbuild/rules_python/archive/4b84ad270387a7c439ebdccfd530e2339601ef27.tar.gz",
    ]
)

http_archive(
    name = "six",
    sha256 = "d16a0141ec1a18405cd4ce8b4613101da75da0e9a7aec5bdd4fa804d0e0eba73",
    build_file = "@com_google_protobuf//:third_party/six.BUILD",
    urls = [
            "https://mirror.bazel.build/pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz",
            "https://pypi.python.org/packages/source/s/six/six-1.12.0.tar.gz",
    ]
)

http_archive(
    name = "zlib",
    sha256 = "c3e5e9fdd5004dcb542feda5ee4f0ff0744628baf8ed2dd5d66f8ca1197cb1a1",
    build_file = "@com_google_protobuf//:third_party/zlib.BUILD",
    strip_prefix = "zlib-1.2.11",
    urls = [
            "https://mirror.bazel.build/zlib.net/zlib-1.2.11.tar.gz",
            "https://zlib.net/zlib-1.2.11.tar.gz",
    ]
)

http_archive(
    name = "build_bazel_rules_nodejs",
    sha256 = "790af2f3739871fedfb5721263e145e6ca6559c3c90bcaf6f3482a165d411827",
    urls = ["https://github.com/bazelbuild/rules_nodejs/releases/download/2.0.0-rc.0/rules_nodejs-2.0.0-rc.0.tar.gz"],
)

load("@build_bazel_rules_nodejs//:index.bzl", "node_repositories")

node_repositories(package_json = ["//web:package.json"])

load("@build_bazel_rules_nodejs//:index.bzl", "yarn_install")

yarn_install(
    name = "npm",
    package_json = "//web:package.json",
    yarn_lock = "//web:yarn.lock",
)
