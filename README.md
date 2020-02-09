
#Instructions
To start the database container:
```
cd docker
docker-compose up -d
```

To run the application you'll need Java 11 installed
```
./gradlew bootRun
```

`gradlew.bat` can be used on Windows

Starting the app will create the schema and import seed data.
Stopping the app will cause all tables to be dropped.

