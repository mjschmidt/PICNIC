FROM alpine

RUN apk update;
RUN apk add curl;
RUN curl -L -O https://github.com/xuchenCN/go-pssh/blob/master/release/x86_64/go-pssh?raw=true
RUN mv go-pssh?raw=true /usr/bin/go-pssh; chmod +x /usr/bin/go-pssh;
RUN curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.11.6/bin/linux/amd64/kubectl; 
RUN chmod +x ./kubectl; mv ./kubectl /usr/bin/kubectl; apk add pssh;
