FROM debian:bookworm

RUN apt update && apt upgrade -y
RUN apt install --no-install-recommends -y procps dbus x11-apps xorg libglib2.0-bin libmfx1 libmfx-tools libva-drm2 libva-x11-2 vainfo alsa-utils pulseaudio openjdk-17-jre

RUN groupadd user && useradd user -g user -m
RUN chown -Rv user:user /home/user
USER user
WORKDIR /home/user
COPY launcher.jar /home/user
COPY entrypoint.sh /usr/bin/entrypoint

ENTRYPOINT entrypoint
