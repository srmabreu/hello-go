FROM golang:latest

LABEL maintaner="Sérgio Abreu <srmabreu@gmail.com>"

WORKDIR /app

# Copy the source from the current directory to the Working Directory inside the container
COPY . .

# build file with go tool
RUN go build hello.go

# Run the executable
CMD ["./hello"]