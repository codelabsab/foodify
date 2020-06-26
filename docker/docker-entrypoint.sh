#!/bin/bash
gcloud beta secrets versions access latest --secret="${GOOGLE_SECRET_NAME:-codelabs-admin}" >> "/tmp/${GOOGLE_PROJECT_ID:-codelabs-admin}.json"
exec "$@"
