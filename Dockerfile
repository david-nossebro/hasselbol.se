# hasselbol.se production image.
#
# A pure file copy: no Node.js, no build step, no bundler. The image is just
# nginx serving three static paths, which keeps it small and makes rebuilds
# near-instant.
#
# COPY is an explicit allowlist on purpose - it guarantees nothing else from
# the build context (git metadata, node_modules, .env, dev tooling) can ever
# end up in the served image. If you add a new top-level file or directory
# that the browser needs, add a matching COPY line here.
FROM nginx:alpine

COPY index.html /usr/share/nginx/html/index.html
COPY styles.css /usr/share/nginx/html/styles.css
COPY assets /usr/share/nginx/html/assets

EXPOSE 80
