FROM docker:stable

RUN apk add curl
RUN apk add python3

RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > google-cloud-sdk.tar.gz

RUN  tar -C . -xvf google-cloud-sdk.tar.gz
RUN google-cloud-sdk/install.sh