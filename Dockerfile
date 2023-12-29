# Use a base image with rsync installed
FROM alpine:latest

# Install rsync and other utilities
RUN apk add --no-cache rsync bash

# Create a directory for the scripts and volumes for the mirror data
RUN mkdir /scripts

# Copy the sync script into the container
COPY sync-mirrors.sh /scripts/

# Make sure the script is executable
RUN chmod +x /scripts/sync-mirrors.sh

# This script will be executed when the container starts
ENTRYPOINT ["/scripts/sync-mirrors.sh"]

