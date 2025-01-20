# Pull official Python base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1  # Prevents creation of .pyc files
ENV PYTHONUNBUFFERED 1         # Ensures stdout and stderr are flushed immediately

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/

# Install dependencies
RUN python -m pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt \
    && pip install six

# Copy project files into the container
COPY . /app/
