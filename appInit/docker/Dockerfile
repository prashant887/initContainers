FROM alpine:3.11

RUN apk --no-cache add curl
RUN mkdir /app

COPY ./app /app

RUN chmod 777 -R /app
RUN mkdir /input
RUN chmod 777 -R /input

RUN mkdir /log
RUN chmod 777 -R /log


CMD ["sh","/app/initScript.sh"]
