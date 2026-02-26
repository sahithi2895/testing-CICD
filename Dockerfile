FROM postman/newman:alpine

WORKDIR /etc/newman

# Install HTML Extra Reporter
RUN npm install -g newman-reporter-htmlextra

# Copy Postman collection and environment
COPY Day2-Practice.postman_collection.json .
COPY New-Environment.postman_environment.json .

# Run tests and generate report inside mounted folder
CMD newman run Day2-Practice.postman_collection.json \
    -e New-Environment.postman_environment.json \
    -r htmlextra \
    --reporter-htmlextra-export /etc/newman/newman-report.html