FROM alpine:3.20
LABEL maintainer="Alex Indigo <iam@alexindigo.com>"
LABEL github_url="https://github.com/alexindigo/dhcp_dnsmasq"

# Expose DHCP ports 67/udp, 68/udp
EXPOSE 67/udp
EXPOSE 68/udp
# Expose Web UI port
EXPOSE 80/tcp

# Install dnsmasq
RUN apk update
RUN apk upgrade
RUN apk --no-cache add tzdata dnsmasq python3 py3-bottle py3-jinja2

COPY webconf/app /app

# Add poor's man "supervisord"
COPY entrypoint.sh /app/entrypoint.sh
RUN chmod +x /app/entrypoint.sh

# Start dnsmasq and web ui
CMD ["/app/entrypoint.sh"]
