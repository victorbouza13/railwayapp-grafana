ARG VERSION=latest

FROM grafana/grafana-enterprise:${VERSION}

ENV \
    GF_INSTALL_PLUGINS="grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource" \
    GF_SECURITY_ALLOW_EMBEDDING=true \
    GF_AUTH_ANONYMOUS_ENABLED=true


