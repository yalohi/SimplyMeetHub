FROM nginx:mainline-alpine

COPY nginx-common-ssl.conf /etc/nginx/nginx-common-ssl.conf
COPY nginx-common-proxy.conf /etc/nginx/nginx-common-proxy.conf
COPY nginx-hub.conf /etc/nginx/nginx.conf
COPY nginx-hub.crt /etc/nginx/nginx.crt
COPY nginx-hub.key /etc/nginx/nginx.key

COPY app /etc/nginx/html