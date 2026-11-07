# Coolify deployment
Public repository: https://github.com/madhu734/ju-english-viva-studio
Domain: https://viva.tmadhu.me
Use Dockerfile build pack, port 80. Startup discovers the host gateway; HOST_IP may override it. The host tutor must listen on 8055 and allow the Docker network to reach it. Nginx proxies /api/ with 120s read/send and 30s connect timeouts. The frontend posts {question, course} to /api/ask. Provider keys stay in the host service. Marked parses Markdown; DOMPurify sanitizes the HTML. Import an old-domain progress export in Review to transfer browser progress to the new domain.
