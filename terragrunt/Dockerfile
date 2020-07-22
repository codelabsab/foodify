ARG TERRAGRUNT_VERSION
ARG GOOGLE_SDK_VERSION
ARG HELM_VERSION
ARG HELM3_VERSION
ARG KUBECTX_VERSION

FROM alpine/terragrunt:${TERRAGRUNT_VERSION:-0.12.21} as terragrunt

FROM alpine/helm:${HELM_VERSION:-2.16.3} as helm

FROM alpine/helm:${HELM3_VERSION:-3.2.4} as helm3

FROM google/cloud-sdk:${GOOGLE_SDK_VERSION:-283.0.0}-alpine as gcloud

FROM python:slim

COPY --from=helm /usr/bin/helm /usr/local/bin/helm
COPY --from=helm3 /usr/bin/helm /usr/local/bin/helm3
COPY --from=terragrunt /usr/local/bin/terragrunt /usr/local/bin/terragrunt
COPY --from=terragrunt /bin/terraform /usr/local/bin/terraform
COPY --from=gcloud /google-cloud-sdk /google-cloud-sdk

RUN apt-get update && apt-get install -y \
    bash-completion \
    curl \
    git \
    vim  \
    jq

RUN curl -L -o /usr/local/bin/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/v${KUBECTX_VERSION:-0.8.0}/kubectx && \
    curl -L -o /usr/local/bin/kubens https://raw.githubusercontent.com/ahmetb/kubectx/v${KUBECTX_VERSION:-0.8.0}/kubens && \
    chmod +x /usr/local/bin/kubectx && \
    chmod +x /usr/local/bin/kubens

RUN /google-cloud-sdk/install.sh -q --additional-components kubectl beta && \
    /google-cloud-sdk/bin/gcloud config set core/disable_usage_reporting true && \
    /google-cloud-sdk/bin/gcloud config set component_manager/disable_update_check true

VOLUME ["/root/.config"]

CMD ["/bin/bash", "-l"]
