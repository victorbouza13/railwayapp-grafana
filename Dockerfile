ARG VERSION=latest

# Usar una imagen base compatible, como Debian o Ubuntu
FROM ubuntu:latest

# Instalar las dependencias necesarias para Grafana
RUN apt-get install -y git wget

# Clonar tu fork de Grafana
RUN git clone https://github.com/victorbouza13/grafana.git /grafana

# Cambiar al directorio del código clonado y ejecutar los pasos de instalación de Grafana
WORKDIR /grafana

# Configurar las variables de entorno y plugins de Grafana
ENV \
    GF_INSTALL_PLUGINS=grafana-piechart-panel,grafana-worldmap-panel,grafana-clock-panel,grafana-simple-json-datasource

# Exponer el puerto por defecto de Grafana
EXPOSE 3000

