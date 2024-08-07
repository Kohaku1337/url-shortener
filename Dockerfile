FROM golang:1.21 as build

WORKDIR /app

COPY go.mod go.sum ./

RUN go mod download

COPY . .

RUN go build -o main ./cmd/url-shortener

EXPOSE 8080

CMD ["./main"]