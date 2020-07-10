### Terragrunt

This is a structure for terragrunt.

Each terraform module have their own README file located in each modules/<module>/README.MD
with more information on each module and variables that are available.

#### Quickstart

There is a Makefile that will bring you into a container (shell)
with all the proper tools in requirements section using the correct versions
so no tooling is necessary on the persons workstation running this (except for docker)

It will install following versions inside the container
```
terragrunt/terraform = 0.12.21
helm = 2.16.3
helm3 = 3.x
gcloud-sdk = 283.0.0
kubectl = 1.14.10 (bundled with gcloud-sdk)
kubectx = 0.8.0
kubens = 0.8.0
```
If you want to run other versions - change the values in the Makefile.

If you want to use other credentials for gcloud (default is pricer-admin) then change
`GOOGLE_PROJECT_ID = foodify-281512` and
`GOOGLE_SECRET_NAME = codelabs-admin`

The docker-entrypoint that runs will automatically assume you are using the codelabs-admin project and credentials.

```

##### live directory

The live project is supposed to represent what is running in GCP.

A backend will be created by terragrund/terraform under the following path in google cloud storage:

`foodify-terraform-state/terraform/state/<environment>/<module>`

This will ensure that we never have to create buckets nor will we ever mess another environment up by mistake.

##### modules directory
The modules directory contains all of our modules that can be used either individually or via terragrunt.

#### Instructions on your own workstation

Make sure you have set the GOOGLE_APPLICATION_CREDENTIALS to point to the path of your service account key file.
