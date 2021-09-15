# SPDX-FileCopyrightText: Copyright 2021 Nathan Young
#
# SPDX-License-Identifier: Apache-2.0
FROM debian:bullseye-20210902-slim

ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update && apt-get install -y \
    file zip unzip \
    autoconf make gcc g++ \
    libasound2-dev libcups2-dev libfontconfig-dev libx11-dev libxext-dev libxrender-dev libxtst-dev libxrandr-dev libxt-dev \
    openjdk-17-jdk-headless

ARG USER_ID=1234
ARG GROUP_ID=1234

RUN addgroup --quiet --gid ${GROUP_ID} duke && adduser --quiet --uid ${USER_ID} --gid ${GROUP_ID} --disabled-password --gecos GECOS duke
USER ${USER_ID}:${GROUP_ID}
WORKDIR /usr/local/src

ENTRYPOINT ["/bin/bash"]
