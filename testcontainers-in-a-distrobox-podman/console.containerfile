FROM fedora:42

RUN dnf update -y
RUN dnf install -y npm

# make podman from the host accessable inside distrobox
RUN ln -s /usr/bin/distrobox-host-exec /usr/local/bin/podman

# this file setup env variables
COPY distrobox.rc /etc/distrobox.rc
RUN echo 'source /etc/distrobox.rc' >> /etc/bashrc
