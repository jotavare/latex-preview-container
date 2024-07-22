# sample dockerfile to create a latex container
# always updated to jotavare/latex:latest

# pull latest full texlive image as the base image
FROM texlive/texlive:latest-full

# update package list, install git and perl, remove unnecesary files
RUN apt-get update -y \
    && apt-get install -y --no-install-recommends git perl zsh \
    && apt-get clean autoclean \
    && apt-get autoremove -y

SHELL ["/bin/zsh", "-c"]

COPY /welcome.sh /root/