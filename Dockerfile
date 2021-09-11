# x11docker/fluxbox
# 
# Run fluxbox window manager in docker. 
# Use x11docker to run image. 
# Get x11docker from github: 
#   https://github.com/mviereck/x11docker 
#
# Examples: x11docker --desktop x11docker/fluxbox
#           x11docker x11docker/lxde eterm
#
# See x11docker --help for further options.

FROM debian:bullseye-slim

RUN apt-get update && \
    env DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
      fluxbox \
      eterm && \
    rm -rf /var/lib/apt/lists/*

CMD fluxbox
