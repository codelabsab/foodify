<h1 align="center">Foodify</h1>
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

## Garden

Garden is a tool used for managing our cluster. It also allows for rapid local prototyping. Please see their docs on 
how to install.

[Installing Garden](https://docs.garden.io/basics/installation)

## Rust - Optional

You don't need Rust in order to get things running. But its **highly recommended** that you have it installed in order 
to ease debugging and development. The recommended way is to install rust though the tool rustup.

[Install Rustup](https://rustup.rs/)

Rustup will automatically install the latest stable release ✨


# Developing

## Running cluster locally

All you need to do is to run the command below and garden will do all the setup for you
```shell script
garden dev
```

This command will automatically discover your locall kubernetes cluster and the deploy all our resources on it, cool 
huh!

## Testing that the code builds

You can verify that all our rust code builds with this simple command: 
```shell script
cargo build
```

## Testing the rust code
You can test the rust code with this command:
```shell script
cargo test
```
