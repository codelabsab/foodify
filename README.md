<h1 align="center">Foodify 🌮</h1>
<p align="center">Food and fy</p>
<p align="center">
    <a href="https://github.com/codelabsab/foodify/actions?query=workflow%3ATest"><img src="https://github.com/codelabsab/foodify/workflows/Test/badge.svg"/></a>
</p>


# Prerequisites

## Docker Desktop
The easiest way to have a docker demon running and to set up a local kubernetes cluster is by using docker desktop. You
can find installation instructions at their website.

[Install Docker Desktop](https://docs.docker.com/docker-for-mac/install/)

Remember to enable the kubernetes addon once docker desktop is installed.

[How to enable kubernetes](https://www.techrepublic.com/article/how-to-add-kubernetes-support-to-docker-desktop/)

## Bazel

Bazel is the build orchestrator used to build this project, their slogan is "Fast Correct, choose two", and it's a
pretty good one since Bazel is crazy fast. Thanks to its strict dependency tracking it can do some heavy caching which
speeds up builds tremendously.

[Installing Bazel](https://docs.bazel.build/versions/master/install.html)

If you are using Mac OSX I would recommend using Homebrew.

```shell script
brew install bazel
```

## Rust - Optional

You don't need Rust in order to get things running. Bazel will bundle its own version of rust for its builds. But its **highly recommended** that you have it installed in order
to ease debugging and development. The recommended way is to install rust though the tool rustup.

[Install Rustup](https://rustup.rs/)

Rustup will automatically install the latest stable release ✨


# Developing

## Local cluster

To get started with a fresh cluster you must first install our CRDs needed later on. Given you have Bazel installed you
can just run the following command:
```shell script
bazel run //:crd.apply
```

This command will automatically discover your local kubernetes cluster and then deploy all our resources on it, cool
huh! Once everything is running (might take a while on first run) you can access the graphql playground at
[http://foodify.local.app.garden/](http://foodify.local.app.garden/), and grafana at
[http://foodify.local.app.garden/grafana](http://foodify.local.app.garden/grafana). Garden will track your files and
rebuild your services when needed.

## Build code

You can verify that all our rust code builds with this simple command:
```shell script
cargo build
```

## Test code
You can test the rust code with this command:
```shell script
cargo test
```
