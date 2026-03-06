FROM nginx:1.25.3-alpine
# latest version of nginx using alpine linux as base


#Port to expose
EXPOSE 80
ENV MyName="YourNameHere"
WORKDIR /app
#working path for application inside container

COPY src/ /usr/share/nginx/html
#copy the files for html from our working directory to the  direcotry that nginx will use


CMD [ "nginx", "-g", "daemon off;"]
# exec form