FROM ubuntu:14.04
RUN apt-get update -qq
# install *-dev packages below so cryptography package can install
RUN apt-get install -qqy curl libssl-dev libffi-dev python3-dev
RUN ln /usr/bin/python3 /usr/bin/python
ENV AZURE_CLI_DISABLE_PROMPTS 1
RUN curl http://azure-cli-nightly.cloudapp.net/install | bash
CMD az
