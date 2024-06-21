FROM texlive/texlive:latest-full

RUN apt-get update && \
    apt-get install -y git perl && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* && \
    echo "All done!"
