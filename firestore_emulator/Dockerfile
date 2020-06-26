ARG GCLOUD_SDK_VERSION=271.0.0-alpine

FROM google/cloud-sdk:$GCLOUD_SDK_VERSION

# Install Java 8 JRE (required for  Firestore emulator).
RUN apk add --update --no-cache openjdk8-jre

# Install Firestore Emulator.
RUN gcloud components install cloud-firestore-emulator beta --quiet

RUN gcloud config set project "foodify"

EXPOSE 8080

ENTRYPOINT ["gcloud", "beta", "emulators", "firestore", "start", "--host-port=0.0.0.0:8080"]