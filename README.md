# rtl-sdr

A Docker container for building and executing rtl-sdr tools: http://sdr.osmocom.org/trac/wiki/rtl-sdr

# Usage

Obtain the image from the docker hub:

```docker pull markis/rtl-sdr```

Run an rtl-sdr tool from the container:

```docker run -p 1234:1234 --device /dev/bus/usb --name rtl_tcp markis/rtl-sdr rtl_tcp -a 0.0.0.0```
