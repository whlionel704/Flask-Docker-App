# Use an official Python runtime as a parent image
FROM python:3.8-bookworm


# Set the working directory to /app
WORKDIR /app

# Copy the requirements.txt file and install the Python dependencies
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

# Copy the entire project into the container
COPY . /app

# configure the container to run in an executed manner
ENTRYPOINT [ "python3" ]

# Define the command to run when the container starts
CMD ["app.py"] 
#what is the command to run flask applications line 19?