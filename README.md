# test-native-build-tools

This is a test for [graalvm/native-build-tools](https://github.com/graalvm/native-build-tools/issues/600) shared library creation. We expect all files generated during build to be put into the target folder. 
It was tested with the following environment:

- OS: `Debian 11 (bullseye)`
- GraalVM Version: `graalvm-ce-java17-22.2.0`
- Java Version: `17`
- Maven version: `Apache Maven 3.9.0 (9b58d2bad23a66be161c4664ef21ce219c2c8584)`

## Create GraalVM Native Image

Run the following commands:

    wget https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-22.2.0/graalvm-ce-java17-linux-amd64-22.2.0.tar.gz
    tar -xzvf graalvm-ce-java17-linux-amd64-22.2.0.tar.gz graalvm-ce-java17-22.2.0
    cd graalvm-ce-java17-22.2.0/bin
    ./gu install native-image
    export JAVA_HOME=~/graalvm-ce-java17-22.2.0
    export PATH=$JAVA_HOME/bin:$PATH
    mvn package
