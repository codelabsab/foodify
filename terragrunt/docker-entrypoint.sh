#!/bin/bash
set -e
# source completion
source /google-cloud-sdk/path.bash.inc
kubectl completion bash >> /usr/share/bash-completion/completions/kubectl

# kubectx and kubens completion
curl --silent -L -o /usr/share/bash-completion/completions/kubectx https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubectx.bash
curl --silent -L -o /usr/share/bash-completion/completions/kubens https://raw.githubusercontent.com/ahmetb/kubectx/master/completion/kubens.bash
# color output for kubectx and kubens
curl --silent -L -o /root/kube-ps1.sh https://raw.githubusercontent.com/jonmosco/kube-ps1/master/kube-ps1.sh

cat <<EOF >> /root/.bashrc
source /google-cloud-sdk/completion.bash.inc
source /etc/bash_completion
source /root/kube-ps1.sh

# # Pers color output
PS1='\[\033[38;5;10m\]\u\[$(tput sgr0)\]@\[$(tput sgr0)\]\[\033[38;5;12m\]\H\[$(tput sgr0)\] : \[$(tput sgr0)\]\[\033[38;5;11m\]\w\[$(tput sgr0)\] : [$(tput sgr0)\]\[\033[38;5;13m\]\t\[$(tput sgr0)\]] : \$(kube_ps1) :\n\[$(tput sgr0)\]\[\033[38;5;9m\]>\[$(tput sgr0)\] \[$(tput sgr0)\]'

# terragrunt aliases
alias tg-plan-all='yes | terragrunt plan-all terragrunt-source-update terragrunt-non-interactive terragrunt-ignore-dependency-errors -refresh=false'
alias tg-apply-all='yes | terragrunt apply-all --terragrunt-ignore-external-dependencies terragrunt-source-update terragrunt-non-interactive terragrunt-ignore-dependency-errors'
alias tg-destroy-all='yes | terragrunt destroy-all --terragrunt-ignore-external-dependencies terragrunt-source-update terragrunt-non-interactive terragrunt-ignore-dependency-errors'
alias tf='terraform'
alias tg='terragrunt'
alias ll='ls -l'
EOF

# exports for gcloud, kube and terraform
export CLOUDSDK_CONFIG=/root/.config/gcloud
export KUBECONFIG=/app/.kube/config
export GOOGLE_APPLICATION_CREDENTIALS="/app/key-file.json"
export TERRAGRUNT_DOWNLOAD=/tmp/
export TF_PLUGIN_CACHE_DIR=/tmp/

if [ ! -f $GOOGLE_APPLICATION_CREDENTIALS ]; then
    echo "Keyfile missing, fetching it from gcloud secrets"
    #gcloud config set project "${GOOGLE_PROJECT_ID:-codelabs-admin}"
    gcloud beta secrets versions access latest --project ${GOOGLE_PROJECT_ID:-foodify-281512} --secret="${GOOGLE_SECRET_NAME:-codelabs-admin}" >> "/app/key-file.json"
fi

exec "$@"
