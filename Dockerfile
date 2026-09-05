# Base Docker image
FROM node:26.8.1-trixie-slim@sha256:c0753125a3789977aefe869cbebccf70e3cfd7ea84ca48547458f02e4f1d7146

# Metadata of Docker image
LABEL maintainer="maeda.naoki.md9@gmail.com"
LABEL version="1.0.0"

# Docker image args
## User setting
ARG GID=10000
ARG UID=10000
ARG GroupName="AuthorGroup"
ARG UserName="author"
ARG UserHomeDir="/home/author"

## Node modules setting
ARG NodeModulesDir="${UserHomeDir}/HomePage/node_modules"
ARG PnpmStoreDir="${UserHomeDir}/HomePage/.pnpm-store"

## pnpm setting
ARG PnpmVersion=12.1.0
