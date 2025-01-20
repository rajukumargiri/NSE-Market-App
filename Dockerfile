# Pull official Python base image
FROM python:3.11-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libopenblas-dev \
    gfortran \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy requirements file
COPY requirements.txt /app/

# Install Python dependencies
RUN python -m pip install --upgrade pip setuptools wheel \
    && pip install -r requirements.txt \
    && pip install six

# Copy project files
COPY . /app/
