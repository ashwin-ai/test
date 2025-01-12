# Set base image
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy requirements.txt (ensure it's in the same directory as the Dockerfile)
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application files
 COPY ./path/to/requirements.txt /app/


# Set the command to run your application
CMD ["python", "app.py"]




