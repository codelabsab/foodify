FROM grafana/grafana:latest

COPY config/grafana.ini /etc/grafana/grafana.ini
COPY config/datasources.yaml /etc/grafana/provisioning/datasources/datasources.yaml
COPY config/dashboards.yaml /etc/grafana/provisioning/dashboards/dashboards.yaml
COPY config/dashboards/ /etc/grafana/provisioning/dashboards/dashboards/