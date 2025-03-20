FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Copy everything into the container
COPY . /app

# Install dependencies
RUN pip install -r requirements.txt

# Expose port 8000
EXPOSE 8000

# Run Django server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]

