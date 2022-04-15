FROM        node:16.14.2-alpine
LABEL       author="Roberto Barrantes"
ENV         NODE_ENV=production
ENV         PORT=3200
WORKDIR     /var/www
COPY        package.json package-lock.json ./
RUN         npm install 
RUN         npm install --save @angular/material @angular/animations
COPY        . ./ 
EXPOSE      $PORT
ENTRYPOINT  "npm" "start"