# Use Python 3.9-slim image as base
FROM python:3.9-slim

# Set the working directory
WORKDIR /app

# Copy all files into the working directory
COPY . /app

# Install Python dependencies from the requirements file
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 5000 for the app
EXPOSE 5000

# Set the default command to run the app
CMD ["python", "app.py"]
