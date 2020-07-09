FROM docker:stable

RUN apk add curl
RUN apk add python3

RUN mkdir /usr/local/gc/

RUN curl https://dl.google.com/dl/cloudsdk/release/google-cloud-sdk.tar.gz > /usr/local/gc/google-cloud-sdk.tar.gz

RUN  tar -C /usr/local/gc/ -xvf /usr/local/gc/google-cloud-sdk.tar.gz
RUN /usr/local/gc/google-cloud-sdk/install.sh

ENV PATH $PATH:/usr/local/gc/google-cloud-sdk/bin