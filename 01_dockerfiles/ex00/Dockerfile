# Emacs instant development (C compiler included)

FROM alpine

WORKDIR /root

RUN apk --no-cache add emacs\
	gcc\
	make

CMD ["sh", "-c", "emacs ."]
