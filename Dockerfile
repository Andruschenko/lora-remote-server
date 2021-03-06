FROM ubuntu:14.04

# Update and install some command-line tools + python plus required packages
# TODO: Remove unnecessary tools
RUN sudo apt-get update && sudo apt-get install -y \
    build-essential \
    cmake \
    curl \
    git \
    pkg-config \
    python3 \
    python3-dev \
    python3-w1thermsensor \
    python-distribute \
    python-pip \
    tar \
    vim \
    wget \
&& sudo pip install Flask tweepy


## If server was build once already, just comment all above this line and uncomment the line below
# FROM huehug_clairecut-server

COPY . /app
WORKDIR /app

ENTRYPOINT ["python"]
CMD ["app.py"]