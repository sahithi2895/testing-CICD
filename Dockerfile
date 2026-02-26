FROM postman/newman:alpine

# Install htmlextra reporter
RUN npm install -g newman-reporter-htmlextra

WORKDIR /etc/newman