FROM alpine:3.11

RUN apk --no-cache add curl
RUN mkdir /app

COPY ./app /app

RUN chmod 777 -R /app
RUN mkdir /output
RUN chmod 777 -R /output


CMD ["sh","/app/mainScript.sh"]
