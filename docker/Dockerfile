# pull latest full texlive image as the base image
FROM pandoc/latex:latest-ubuntu

# update package list, install git and perl, remove unnecesary files
RUN apt-get update \
    && apt-get install -y git perl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* \
