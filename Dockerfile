FROM alpine:3.6

ARG repo=git://git.osmocom.org/rtl-sdr.git
ARG clone_dir=/src

RUN \
  apk add --no-cache --virtual build-dependencies \
    musl-dev gcc make cmake pkgconf git libusb-dev build-base \
  && git clone --depth=1 ${repo} ${clone_dir} \
  && cd ${clone_dir} \
  && cmake ${clone_dir} -DDETACH_KERNEL_DRIVER=ON \
  && make \
  && make install \
  && rm -rf ${clone_dir} \
  && apk del build-dependencies

ENTRYPOINT /usr/local/bin/rtl_tcp
