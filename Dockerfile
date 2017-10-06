FROM ubuntu:16.04
ENV MLSERVER_VERSION=9.2.1
RUN apt-key adv --keyserver pgp.mit.edu --recv-keys BC528686B50D79E339D3721CEB3E94ADBE1229CF \
    && apt-get update \
    && apt-get install -y apt-transport-https \
    && echo "deb [arch=amd64] https://packages.microsoft.com/ubuntu/16.04/prod xenial main" > /etc/apt/sources.list.d/microsoft-prod.list \
    && apt-get update \
    && apt-get install -y microsoft-mlserver-all-$MLSERVER_VERSION \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \
    && /opt/microsoft/mlserver/$MLSERVER_VERSION/bin/R/activate.sh
MAINTAINER John Paul Ada
CMD /opt/microsoft/mlserver/$MLSERVER_VERSION/runtime/python/bin/jupyter notebook --no-browser --port=8888 --ip=0.0.0.0 --allow-root