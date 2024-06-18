FROM ghcr.io/graalvm/native-image:ol8-java17-22.3.0 AS graalVmImage
FROM maven:3.9.7@sha256:c4f38c877ff3b68e10d7424afe09882b2ff5f97b939f17e5dcfd98773a0b8608 AS maven
FROM debian:11

RUN apt-get update && apt-get install -y build-essential zlib1g-dev

COPY --from=maven /usr/share/maven /usr/share/maven
COPY --from=graalVmImage /usr/lib64/graalvm/graalvm22-ce-java17 /graalvm/
COPY . .

ENV MAVEN_HOME=/usr/share/maven
ENV JAVA_HOME=/graalvm
ENV PATH=$JAVA_HOME/bin:$PATH
ENV PATH=$MAVEN_HOME/bin:$JAVA_HOME/bin:$PATH

ENTRYPOINT ["mvn", "package"]
