FROM golang:1.20.3-alpine3.16

RUN apk update && apk add git
RUN mkdir /go/src/app
WORKDIR /go/src/app

RUN go mod tidy

RUN go install github.com/cosmtrek/air@v1.27.3

CMD ["air"]