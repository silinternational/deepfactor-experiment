FROM golang:1.21

WORKDIR /opt

COPY . .

RUN go build -o app cmd/main.go

CMD ./app
