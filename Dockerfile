FROM golang:1.18.5-bullseye

WORKDIR /app

COPY go.mod ./
COPY go.sum ./

RUN go mod download

COPY . ./

RUN go build -o /main

EXPOSE 3000

CMD ["/main"]