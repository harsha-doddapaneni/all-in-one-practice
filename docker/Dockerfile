FROM almalinux:9
RUN dnf install nginx -y
RUN rm -rf /usr/share/nginx/html/index.html
COPY index.html /usr/share/nginx/html/index.html
ADD https://raw.githubusercontent.com/daws-81s/expense-infra-dev/refs/heads/main/readme.MD /usr/share/nginx/html/index.html
RUN chmod +x /usr/share/nginx/html/index.html
RUN useradd expense
RUN mkdir /tmp/docker
WORKDIR /tmp/docker
RUN pwd
RUN echo "Hello" > hello.txt
#CMD ["sleep", "100"]
USER expense
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
LABEL author="harsha" \
      topic="docker files" \
      duration="120 hrs"
ENV couse="Devops with aws" \
    trainer="harsha" \
    duration="120hrs"