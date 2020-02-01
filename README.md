# x11docker/fluxbox

Quite small base image with fluxbox window manager. Based on Debian.
 - Run fluxbox in docker.
 - Use [x11docker](https://github.com/mviereck/x11docker) to run GUI applications and desktop environments in docker images. 

Look at `x11docker --help` for further options.

# Example commands: 
 - Full desktop: `x11docker --desktop fluxbox` 
 - Single application: `x11docker x11docker/fluxbox eterm`
 
# Extend base image
To add your desired applications, create your own Dockerfile with this image as a base. Example:
```
FROM x11docker/fluxbox
RUN apt-get update
RUN apt-get install -y firefox-esr
```

# Screenshot
Fluxbox window manager desktop in a Xephyr window running with x11docker:
 
![screenshot](https://raw.githubusercontent.com/mviereck/x11docker/screenshots/screenshot-fluxbox.png "fluxbox running in Xephyr window using x11docker")
 
