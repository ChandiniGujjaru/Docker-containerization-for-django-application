# 🌟 Docker-containerization-for-django-application
This repository features a simple Django web application that has been successfully containerized using Docker. The project demonstrates how a Python-based web application can be packaged into a Docker image and run in an isolated environment, serving a simple HTML page.

## 🚀 What This Project Does

This project spins up a simple Django app that returns:

![Image](https://github.com/user-attachments/assets/bcb11e02-4f71-484b-a128-aaeda2c92448)

It demonstrates how to:
- 📦 Package a Django app into a Docker image
- 🐳 Run that image in a container
- 🌐 Serve content from inside the container to your local machine

---

## 🛠️ Tech Stack

- 🐍 Python 3.9  
- 🌐 Django  
- 🐳 Docker  

---

## 🚀 How It Works

- Developed a minimal Django project to display a simple HTML message.
- Created a custom `Dockerfile` to containerize the application.
- Built the Docker image using `docker build`.
- Ran the container with port mapping to expose the app on `localhost:8000`.
- Accessed the running application in a web browser.

---

## ✅ Conclusion

This project serves as a foundational example of how to containerize a Django application using Docker.  
It highlights essential DevOps practices such as environment isolation, image creation, and containerized application deployment.

This setup can be extended further with features like environment variable support, database integration, and orchestration tools like Docker Compose or Kubernetes.

---
