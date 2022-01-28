FROM openjdk:17

MAINTAINER Florian Weber <florian.weber@neuefische.de>

ADD backend/target/florian-capstone.jar florian-capstone.jar

CMD [ "sh", "-c", "java -Dserver.port=$PORT -Dspring.data.mongodb.uri=$MONGO_DB_URI -jar /florian-capstone.jar" ]
