# Sample app to demonstrate the working of Docker file
This project to demonstrate the usage of Docker.

# How to build docker image
```docker
docker build . -t flaskapp:v1
```

# How to run docker container
```docker
docker run --name my_app -v path_of_folder_containing_image flaskapp:v1
```

# Folder Architecture
```
    app.py >> Flask application
    Dockerfile >> Docker file
    requirements.txt >> dependencies file
```
# Author
Ashish
