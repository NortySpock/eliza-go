# Eliza-Go

## Original Author: Matthew Shiel 
## Modified by David Norton



Implementation of an Eliza chatbot in Go, based on the Eliza natural language processing program. 

## How to Run The Chatbot

*Assumes that Git and Go are installed along with the prerequisites.*
**If not, they can be found from https://golang.org/dl/ and https://git-scm.com/downloads**

**1. Clone the Repository**
```bash
> git clone https://github.com/mattshiel/eliza-go.git
```
**2. Change Directory to the Folder**

```bash
Open the terminal/command line and navigate into the folder 
eg. > cd eliza-go
```

**2. Compile the Chatbot**

```bash
> go build server.go
```

**3. Run the Chatbot**

```bash
To run the chatbot enter './' followed by the executable produced
For Mac:
> ./server
For Windows:
> ./server.go.exe

Alternatively:
> go run server.go
```

**4. Open the localhost**
```bash
Go to your browser and type:
> 127.0.0.1:8080
```

## Running the chatbot in a lightweight docker container for simpler hosting
*Additionally assumes you are running on Linux, that docker and docker-compose are installed, and you have completed Step 1 above to clone the repository.*


**1. Compile the chatbot with static binaries so the executable will be fully self contained:**
```bash
> CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server .
```

**2. Build the Docker container:**
```bash
> docker build -t eliza-go .
```

**3. Use docker-compose to serve the container**

I chose a non-standard port, you may chose 8080 or anything else you like. 
Note that the web server does depend on the web directory being available (otherwise you will get 404 no file)
You can see it mounted under volumes in the docker-compose file.
