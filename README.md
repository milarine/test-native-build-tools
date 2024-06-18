# test-native-build-tools

This is a test for [graalvm/native-build-tools](https://github.com/graalvm/native-build-tools/issues/600) shared library creation. We expect all files generated during build to be put into the target folder. 

## Create GraalVM Native Image in Docker Container
    docker build -t test-native-build-tools .
    docker run test-native-build-tools
