#!/bin/bash

set -e

echo -e "\033[0;33m\nHello to you! ✨ I will now configure your cluster and deploy the whole application to it! Working my magic... 🧙‍♂️\n\033[0m"

echo -e "\033[0;36m➡️  Setting up CRDs (Custom Resource Definitions). This might take a minute...\033[0m"
./$1 > log.log
echo -e "\033[0;32mCRDs are now installed, moving on to deploy helm charts\033[0m"

echo -e "\033[0;36m\n➡️  Deploying Prometheus - Our tool used for metric collection\033[0m"
echo -e "\033[0;36m➡️  Deploying Loki - Used for log collection\033[0m"
echo -e "\033[0;36m➡️  Deploying Elastic Search - Our view database\033[0m"
echo -e "\033[0;36m➡️  Deploying Kafka - Blazing fast message bus\033[0m"
echo -e "\033[0;36m➡️  Deploying Postgres - Our event store\033[0m"
./$2 > log.log
echo -e "\033[0;32m\nSuccessfully deployed Prometheus\033[0m"
echo -e "\033[0;32mSuccessfully deployed Loki\033[0m"
echo -e "\033[0;32mSuccessfully deployed Elastic Search\033[0m"
echo -e "\033[0;32mSuccessfully deployed Kafka\033[0m"
echo -e "\033[0;32mSuccessfully deployed Postgres\033[0m"

echo -e "\033[0;36m\n➡️  Deploying Our Services\033[0m"
