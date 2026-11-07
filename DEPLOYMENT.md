# Coolify deployment
Public repository: https://github.com/madhu734/ju-english-viva-studio
Domain: https://viva.tmadhu.me
Use Dockerfile build pack, port 80. Startup discovers the host gateway; HOST_IP may override it. The host tutor must listen on 8055 and allow the Docker network to reach it. Nginx proxies /api/ with 120s read/send and 30s connect timeouts. The frontend posts {question, course} to /api/ask. Provider keys stay in the host service. Marked parses Markdown; DOMPurify sanitizes the HTML. Import an old-domain progress export in Review to transfer browser progress to the new domain.

## Verified live configuration
Coolify application: kyrccsjbn5eygpggng7x11sp, Personal Sites / stuffs. Container is healthy. HTTPS homepage and /api/health return 200; a real /api/ask request returns success. Host service listens on 0.0.0.0:8055. The host firewall permits only bridge br-18564b3bc066, source 172.16.16.0/20, destination 172.16.16.1/32, TCP port 8055. The rule is persisted with netfilter-persistent; the original IPv4 rules were backed up at /etc/iptables/rules.v4.viva-backup-20261107. No general Internet ingress was added for 8055. Versioned frontend URLs refresh old Cloudflare caches.
