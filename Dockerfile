
FROM jimdo/debian-with-curl

# Build tools for rebuilding binary npm packages.
RUN apt-get update && apt-get install build-essential g++ python -y

ENV METEOR_VERSION=1.6.1

RUN curl "https://install.meteor.com/?release=${METEOR_VERSION}" | sh
