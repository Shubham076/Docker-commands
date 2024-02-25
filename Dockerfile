FROM golang:alpine3.18
RUN addgroup -S shubham && adduser -S shubham -G shubham
RUN apk update && apk add --no-cache git
USER shubham
WORKDIR /home/shubham/app
RUN chown -R shubham:shubham /home/shubham/app
ARG APP_MODE=server
USER shubham
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
RUN GOOS=linux GOARCH=amd64 go build -buildvcs=false ./cmd/${APP_MODE}
ENTRYPOINT ./server
