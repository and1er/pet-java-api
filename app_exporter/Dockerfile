# --- Build Stage ---
FROM golang:1.16.3-alpine3.13 AS builder
COPY . /app
WORKDIR /app
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o app_exporter .

# --- Pack Stage ---
FROM alpine:3.13.5
RUN apk --no-cache add ca-certificates=20191127-r5 curl=7.76.1-r0

# Add new user "appuser" to run as non-root
RUN adduser -D appuser
USER appuser

# Copy the application binary.
COPY --from=builder /app /home/appuser/app
WORKDIR /home/appuser/app

# Since running as a non-root user, port bindings < 1024 is not possible
EXPOSE 8080
EXPOSE 8443

CMD ["./app_exporter"]
