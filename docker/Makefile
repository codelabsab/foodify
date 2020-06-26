GOOGLE_SECRET_NAME = codelabs-admin
GOOGLE_PROJECT_ID = foodify-281512

.PHONY: build
build:
	@docker build \
    . -t local/gcloud


.PHONY: auth
auth:
	@docker run -ti --name gcloud-auth local/gcloud \
	gcloud auth login --project "${GOOGLE_PROJECT_ID}"

.PHONY: run
run:
	@docker run --rm -ti --volumes-from gcloud-auth \
	-v `pwd`:/app/ \
	--entrypoint /app/docker-entrypoint.sh \
	--workdir /app/ \
    --env GOOGLE_SECRET_NAME="${GOOGLE_SECRET_NAME}" \
	local/gcloud \
	/bin/bash
