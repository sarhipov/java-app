#How to..? 
==================================================
## Manually build `hello-world` java application 
### Option 1 (two steps)
Run from root of the project
**Step 1:** build java project
```
gradle clean -b  hello-world/build.gradle
gradle build -b  hello-world/build.gradle
```

**Step 2** build, tag and push docker image 
```
#build & tag
docker build -f Dockerfile_1 -t sarhipov/hello-world-java-1-stage:latest .

#push to dockerhub
docker push sarhipov/hello-world-java-1-stage:latest

#run locally and remove when stopped
docker run -it --rm sarhipov/hello-world-java-1-stage:latest
```

## Option 2 (one step)
Run from root of the project 
```
#build & tag
docker build -f Dockerfile -t sarhipov/hello-world:latest .

#push to dockerhub
docker push sarhipov/hello-world:latest

#run 
docker run -it --rm sarhipov/hello-world:latest

# multi platform image
docker buildx build --platform linux/amd64,linux/arm64 -t sarhipov/hello-world-java-multi -f Dockerfile .
docker run -it --rm sarhipov/hello-world-java-x86-2-stages:latest
```


# Other
==================================================
## custom jenkins agent image 
```
docker build -f Dockerfile_2 -t sarhipov/jenkinsagent-x86:latest .
docker push sarhipov/jenkinsagent-x86:latest
```