FROM postman/newman:latest

WORKDIR /etc/newman

COPY Day2-Practice.postman_collection.json .
COPY New-Environment.postman_environment.json .

CMD ["run", "Day2-Practice.postman_collection.json", "-e", "New-Environment.postman_environment.json"]