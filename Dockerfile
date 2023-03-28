FROM openjdk:11-jre-slim@sha256:1efc10742a26c56416e400611b1d7ba871dab6c478e8017ab0a226d87f26b78b
# for amd64 architecture
FROM --platform=linux/amd64 openjdk:11-jre-slim@sha256:dfa2c54ed832658aa90da547bb1b8bd41e5d3fffcc0c89e6540dea586ccefdef

EXPOSE 8080
ADD target/ob-item-service-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT ["java","-jar", "app.jar"]
