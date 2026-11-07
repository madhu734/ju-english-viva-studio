FROM nginx:alpine
RUN apk add --no-cache iproute2
COPY dist/ /usr/share/nginx/html/
COPY nginx.conf.template /etc/nginx/viva.conf.template
COPY docker-entrypoint.sh /docker-entrypoint.d/40-viva-host.sh
RUN chmod +x /docker-entrypoint.d/40-viva-host.sh
EXPOSE 80
HEALTHCHECK --interval=30s --timeout=5s --start-period=10s CMD wget -qO- http://127.0.0.1/healthz || exit 1
