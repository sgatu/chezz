FROM golang:1.21

WORKDIR /app

COPY ./code/go.mod ./code/go.sum ./

RUN go mod download

COPY ./code ./

COPY ./code/.env.dev ./.env.dev

RUN make build

EXPOSE 5173

CMD ["./dist/chezz"]
