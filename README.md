# Build environment for OpenJDK 17


## Introduction
A container based environment for building OpenJDK 17.


## Example Usage
```
docker build --build-arg USER_ID=`id -u` --build-arg GROUP_ID=`id -g` .

docker run --rm -ti --mount type=bind,src=/path/to/jdk/source-code,dst=/usr/local/src/jdk <ID from previous step>
```
