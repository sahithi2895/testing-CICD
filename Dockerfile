FROM postman/newman:alpine

WORKDIR /etc/newman

# Install HTML extra reporter
RUN npm install -g newman-reporter-htmlextra

# Copy Postman files
COPY Day2-Practice.postman_collection.json .
COPY New-Environment.postman_environment.json .

# Default command (can be overridden in CI)
CMD ["newman", "run", "Day2-Practice.postman_collection.json",
     "-e", "New-Environment.postman_environment.json",
     "-r", "htmlextra",
     "--reporter-htmlextra-export", "newman-report.html"]