FROM lsiobase/alpine.python:3.5
MAINTAINER sparklyballs

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Linuxserver.io version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# install pip pacakges
RUN \
 pip install --no-cache-dir -U \
	cherrypy && \

# cleanup
rm -rf \
	/root/.cache \
/tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 8085
VOLUME /config
