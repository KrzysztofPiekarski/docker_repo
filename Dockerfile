FROM ubuntu:18.04
RUN apt update && apt install vim -y
CMD ["date"]

