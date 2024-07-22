# sample dockerfile to create a docker image

# pull latest full texlive image as the base image
FROM texlive/texlive:latest-full

# update package list, install git and perl, remove unnecesary files
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends git perl zsh \
    && apt-get clean autoclean \
    && apt-get autoremove -y

# set the default shell to zsh
SHELL ["/bin/zsh", "-c"]

COPY /.devcontainer/versions.sh /root/