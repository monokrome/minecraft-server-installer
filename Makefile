LOCAL_ETC_VOLUME ?= $(PWD)/etc/minecraft
REMOTE_ETC_VOLUME ?= /usr/local/etc/minecraft

LOCAL_LIB_VOLUME ?= $(PWD)/lib
REMOTE_LIB_VOLUME ?= /usr/local/lib

all: image

image: bin/minecraft
	docker build -t monokrome/minecraft .
.PHONY: image


shell: $(LOCAL_ETC_VOLUME) image
	docker run -it --rm \
		-v "$(LOCAL_ETC_VOLUME):$(REMOTE_ETC_VOLUME)" \
		-v "$(LOCAL_LIB_VOLUME):$(REMOTE_LIB_VOLUME)" \
		monokrome/minecraft bash
.PHONY: shell


server: $(LOCAL_ETC_VOLUME) image
	docker run -it --rm monokrome/minecraft


$(LOCAL_ETC_VOLUME):
	mkdir -p $@
