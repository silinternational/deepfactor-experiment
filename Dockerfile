FROM golang:1.21 as go

WORKDIR /opt

COPY . .

RUN go build -o app cmd/main.go

FROM alpine:3

WORKDIR /usr/local/bin

COPY --from:go /opt/app .

CMD /usr/local/bin/app
