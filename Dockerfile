FROM python:3.9-slim-buster

# Set the working directory in the container to /app.
# All subsequent commands will be executed from this directory.
# This '/app' directory will be the root of your Django project inside the container.
WORKDIR /app

# Copy the requirements.txt file first.
# This leverages Docker's build cache. If only requirements.txt changes,
# pip install needs to re-run. If application code changes but requirements.txt
# does not, this layer will be cached, speeding up subsequent builds.
# Make sure your requirements.txt is in the same directory as this Dockerfile.
COPY requirements.txt .

# Install Python dependencies.
# --no-cache-dir reduces the image size by preventing pip from caching packages.
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire Django project into the container's working directory (/app).
# The '.' refers to the build context (the directory where your Dockerfile is).
# This means your manage.py, inner project folder (devops), and any apps
# (like djangoapplication) will be copied to /app.
COPY . .

# Expose port 8000.
# This indicates that the container listens on port 8000 at runtime.
# Remember, this doesn't publish the port; you'll do that with `docker run -p`.
EXPOSE 8000

# Define the command to run your Django application when the container starts.
# manage.py is now at /app/manage.py, so we can run it directly.
# 0.0.0.0:8000 makes the Django development server accessible from outside the container.
CMD ["python3", "devops/manage.py", "runserver", "0.0.0.0:8000"]

