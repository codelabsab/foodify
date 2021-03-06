TERRAGRUNT_VERSION = 0.12.21
HELM_VERSION = 2.16.3
GOOGLE_SDK_VERSION = 283.0.0
KUBECTX_VERSION = 0.8.0
GOOGLE_PROJECT_ID = foodify-281512
GOOGLE_SECRET_NAME = codelabs-admin
DOCKER_CONTAINER_NAME = codelabs-toolbox

.PHONY: build
build:
	@docker build \
	--build-arg TERRAGRUNT_VERSION="${TERRAGRUNT_VERSION}" \
	--build-arg HELM_VERSION="${HELM_VERSION}" \
	--build-arg GOOGLE_SDK_VERSION="${GOOGLE_SDK_VERSION}" \
	--build-arg KUBECTX_VERSION="${KUBECTX_VERSION}" \
    . -t local/tools

.PHONY: buildci
buildci:
	@docker build \
	--cache-from "${CACHE_IMAGE}":latest \
	--build-arg BUILDKIT_INLINE_CACHE=1 \
	--build-arg TERRAGRUNT_VERSION="${TERRAGRUNT_VERSION}" \
	--build-arg HELM_VERSION="${HELM_VERSION}" \
	--build-arg GOOGLE_SDK_VERSION="${GOOGLE_SDK_VERSION}" \
	--build-arg KUBECTX_VERSION="${KUBECTX_VERSION}" \
    . -t local/tools -t "${CACHE_IMAGE}":latest


.PHONY: auth
auth:
	@docker run -ti --name ${DOCKER_CONTAINER_NAME}-config local/tools \
	/google-cloud-sdk/bin/gcloud auth login --project "${GOOGLE_PROJECT_ID}"

.PHONY: authci
authci:
	@docker run -t -v `pwd`:/app/ --name ${DOCKER_CONTAINER_NAME}-config local/tools \
	/google-cloud-sdk/bin/gcloud auth activate-service-account --key-file /app/key-file.json

.PHONY: run
run:
	@docker run --rm -ti --volumes-from ${DOCKER_CONTAINER_NAME}-config \
	-v `pwd`:/app/ \
	--entrypoint /app/docker-entrypoint.sh \
	--workdir /app/ \
    --env GOOGLE_SECRET_NAME="${GOOGLE_SECRET_NAME}" \
	local/tools \
	/bin/bash

.PHONY: terraform
terraform:
	@docker run -t --volumes-from ${DOCKER_CONTAINER_NAME}-config \
	-v `pwd`:/app/ \
	--entrypoint /app/docker-entrypoint.sh \
	--workdir /app/ \
  --env GOOGLE_SECRET_NAME="${GOOGLE_SECRET_NAME}" \
	local/tools \
	/bin/bash -c 'cd /app/live/dev && yes | terragrunt apply-all --terragrunt-ignore-external-dependencies terragrunt-source-update terragrunt-non-interactive terragrunt-ignore-dependency-errors'


.PHONY: terraform-destroy
terraform-destroy:
	@docker run -t --volumes-from ${DOCKER_CONTAINER_NAME}-config \
	-v `pwd`:/app/ \
	--entrypoint /app/docker-entrypoint.sh \
	--workdir /app/ \
  --env GOOGLE_SECRET_NAME="${GOOGLE_SECRET_NAME}" \
	local/tools \
	/bin/bash -c 'cd /app/live/dev && yes | terragrunt destroy-all --terragrunt-ignore-external-dependencies terragrunt-source-update terragrunt-non-interactive terragrunt-ignore-dependency-errors'


.PHONY: terraform-output
terraform-output:
	@docker run -t --volumes-from ${DOCKER_CONTAINER_NAME}-config \
	-v `pwd`:/app/ \
	--entrypoint /app/docker-entrypoint.sh \
	--workdir /app/ \
  --env GOOGLE_SECRET_NAME="${GOOGLE_SECRET_NAME}" \
	local/tools \
	/bin/bash -c 'cd /app/live/dev && terragrunt output-all -json | jq -n '"'"'reduce inputs as $$in (null; . + $$in)'"'"' | tee /app/output.json'
