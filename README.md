# x11docker/fluxbox

Quite small base image with fluxbox window manager on debian stretch
 - Run fluxbox in docker.
 - Use x11docker to run GUI applications and desktop environments in docker images.
 - Get [x11docker from github](https://github.com/mviereck/x11docker)

# Example commands: 
 - Full desktop: `x11docker --desktop fluxbox` 
 - Single application: `x11docker x11docker/fluxbox eterm`
 
# Extend base image
To add your desired applications, create your own Dockerfile `mydockerfile` with this image as a base. Example:
```
FROM x11docker/fluxbox
RUN apt-get update
RUN apt-get install -y firefox
```
Build an image with `docker build -t fluxbox - < mydockerfile`. Run desktop with `x11docker --desktop fluxbox` or firefox only with `x11docker fluxbox firefox`.

# Screenshot
 Fluxbox window manager desktop in a Xephyr window running with x11docker:
 
 ![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-fluxbox.png "fluxbox running in Xephyr window using x11docker")
 

