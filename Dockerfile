# Get OS image
FROM ubuntu:22.04
# Author
LABEL maintainer="Ashish Kumar <ashishkrb7@gmail.com>"
# Install tools required for project
RUN apt-get -y update
RUN apt-get install python3-pip -y
# Move files to app folder
COPY ./requirements.txt /app/requirements.txt
# Copy the app file
COPY ./app.py /app/app.py
# Set working directory
WORKDIR /app
# Install python libraries
RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install -r requirements.txt
# Expose the port outside the container
EXPOSE 5000
ENTRYPOINT [ "python3", "app.py" ]