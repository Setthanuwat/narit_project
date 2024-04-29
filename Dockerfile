# Use the official Grafana image as a parent image
FROM grafana/grafana:9.0.4-ubuntu

# Set environment variales for Grafana
ENV GF_AUTH_DISABLE_LOGIN_FORM "true"
ENV GF_AUTH_ANONYMOUS_ENABLED "true"
ENV GF_AUTH_ANONYMOUS_ORG_ROLE "Admin"
ENV GF_DASHBOARDS_JSON_ENABLED "true"

# Set the working directory in the container
WORKDIR /usr/share/grafana

# Copy the Grafana configuration file
COPY grafana.ini /etc/grafana/grafana.ini

# Copy provisioning files for datasources and dashboards
COPY provisioning/datasources /etc/grafana/provisioning/datasources
COPY provisioning/dashboards /etc/grafana/provisioning/dashboards

# Expose the Grafana port
EXPOSE 3000



