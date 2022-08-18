FROM ghcr.io/kangershub/torrentleechx:latest

COPY . .

RUN apt-get update -y && \
    apt-get -qq install -y mediainfo && \
    pip3 install --no-cache-dir -r requirements.txt && \
    chmod +x extract

CMD ["bash","start.sh"]
