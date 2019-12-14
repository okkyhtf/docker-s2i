FROM docker:19.03.5
LABEL maintainer=okky.htf@gmail.com
ENV S2I_VERSION=v1.2.0 \
    S2I_VERSION_HASH=2a579ecd
RUN set -xe \
 && wget -c https://github.com/openshift/source-to-image/releases/download/${S2I_VERSION}/source-to-image-${S2I_VERSION}-${S2I_VERSION_HASH}-linux-amd64.tar.gz \
 && tar xvvzpf source-to-image-${S2I_VERSION}-${S2I_VERSION_HASH}-linux-amd64.tar.gz \
 && rm source-to-image-${S2I_VERSION}-${S2I_VERSION_HASH}-linux-amd64.tar.gz \
 && mv s2i /usr/local/bin/ \
 && mv sti /usr/local/bin/
