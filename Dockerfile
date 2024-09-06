# Use an official lightweight base image
FROM alpine:latest

WORKDIR /app

COPY log-spammer.sh .
RUN chmod +x log-spammer.sh

CMD ["./log-spammer.sh"]