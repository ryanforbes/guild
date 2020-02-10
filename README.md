
# Instructions
To start the database container:
```
cd docker
docker-compose up -d
```
If you don't want to user Docker, you can use your own DB by adjusting the `spring.datasource.url`, `username`, and `password` in `src/main/resources/application.properties`.

To run the application you'll need Java 11 installed
```
./gradlew bootRun
```

`gradlew.bat` can be used on Windows

Starting the app will create the schema and import seed data from `src/main/resources/data.sql`.
Stopping the app will cause all tables to be dropped.

# Testing
`message-examples.postman_collection.json` contains a postman colleciton with example calls that should work using the seed data.

Normally, I'd add a testing framework for some unit and integration tests 

# Endpoints
Please see the Postman collection for examples of how to use the endpoints, and note the default values hard-coded in the annotations on `MessageController.showAll` 

# Notes:
I'm defining "30 days ago" to mean `currentTimeInMilliseconds - 30 days * 24 hours * 3600 minutes * 1000 millis`.

In reality, users are likely to expect "30 days ago" to mean something less strict. For example, if it's Jan 31 at noon, users probably expect to see a message sent Jan 1 at 11:00am. 

I'm ignoring time zones.

There's very little validation of user input.

