gzigzigzeo/docker-download-confd
================================

[![](https://images.microbadger.com/badges/version/gzigzigzeo/docker-download-confd.svg)](https://microbadger.com/images/gzigzigzeo/docker-download-confd)[![](https://images.microbadger.com/badges/image/gzigzigzeo/docker-download-confd.svg)](https://microbadger.com/images/gzigzigzeo/docker-download-confd)[![](https://images.microbadger.com/badges/commit/gzigzigzeo/docker-download-confd.svg)](https://microbadger.com/images/gzigzigzeo/docker-download-confd)

A minimalistic Docker image for downloading confd binary used in child containers.

Usage
-----

```
# Required!
ARG CONFD_VERSION 0.14.0
FROM gzigzigzeo/docker-download-confd as confd

# ================================

RUN mkdir -p /etc/confd/templates
RUN mkdir -p /etc/confd/conf.d

COPY --from=confd /usr/local/bin/confd /usr/local/bin/confd

# .....
```

License
-------

Configuration files and code in this repository are distributed under the
[MIT license](LICENSE).

License information for the software contained in gzigzigzeo/docker-get-confd
Docker image:

* [confd](https://github.com/kelseyhightower/confd/blob/master/LICENSE)
