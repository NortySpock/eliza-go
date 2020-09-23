FROM scratch
EXPOSE 8080/tcp
# set up docker to run the program
ADD server /
ENTRYPOINT ["/server"]


