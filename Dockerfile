# Use Python 3.9-slim image as base
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements.txt first to leverage caching
COPY requirements.txt /app/

# Install Python dependencies from the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the files into the working directory
COPY  python-app/requirements.txt /app/


# Expose port 5000 for the app
EXPOSE 5000

# Set the default command to run the app
CMD ["python", "app.py"]
