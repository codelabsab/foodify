<h1 align="center">Foodify 🌮</h1>
<p align="center">Food and fy</p>
<p align="center">
    <a href="https://github.com/codelabsab/foodify/actions?query=workflow%3ATest"><img src="https://github.com/codelabsab/foodify/workflows/Test/badge.svg"/></a>
</p>


# Local development
Instructions on how to setup a local development environment and start developing! 👨‍💻👩‍💻

## Setup

### Docker Desktop
The easiest way to have a docker demon running and to set up a local kubernetes cluster is by using docker desktop. You
can find installation instructions at their website.

[Install Docker Desktop](https://docs.docker.com/docker-for-mac/install/)

Remember to enable the kubernetes addon once docker desktop is installed.

[How to enable kubernetes](https://www.techrepublic.com/article/how-to-add-kubernetes-support-to-docker-desktop/)

### Garden

Garden is a tool used for managing our cluster. It also allows for rapid local prototyping. Please see their docs on
how to install.

[Installing Garden](https://docs.garden.io/getting-started/1-installation)

### Rust - Optional

You don't need Rust in order to get things running. But its **highly recommended** that you have it installed in order
to ease debugging and development. The recommended way is to install rust though the tool rustup.

[Install Rustup](https://rustup.rs/)

Rustup will automatically install the latest stable release ✨


## Developing

### Local cluster

*Note:* Due to restrictions on how Helm a Kubernetes works, the CRDs for prometheus needs to be deployed first. You can
do that with this command:
```shell script
kubectl apply -f tools/crd/prometheus.yaml
```
You only have to do this once when you have a fresh cluster.

#### Garden

All you need to do is to run the command below and garden will do all the setup for you
```shell script
garden dev
```

This command will automatically discover your local kubernetes cluster and then deploy all our resources on it, cool
huh! Once everything is running (might take a while on first run) you can access the graphql playground at
[http://foodify.local.app.garden/](http://foodify.local.app.garden/), and grafana at
[http://foodify.local.app.garden/grafana](http://foodify.local.app.garden/grafana). Garden will track your files and
rebuild your services when needed.

## Seed data base

A bad thing right now is that you will have no data at all in our cluster. But worry, Le Chef to the rescue. He is a
five star master chef powered by AI. Just run the command bellow and watch him do his thing.

```shell script
cargo run --bin le_chef
```

## Build code
You can verify that all our rust code builds with this simple command:
```shell script
cargo build
```

### Test code
You can test the rust code with this command:
```shell script
cargo test
```

## Known issues

### Error on `cargo build`
The error:
```
   Updating git repository `https://github.com/graphql-rust/juniper`
... [output omitted]

Caused by:
  failed to authenticate when downloading repository
attempted ssh-agent authentication, but none of the usernames `git` succeeded

Caused by:
  no authentication available
```
The fix:
```shell script
CARGO_NET_GIT_FETCH_WITH_CLI=true cargo build
```
Reference: https://github.com/rust-lang/cargo/issues/2078
