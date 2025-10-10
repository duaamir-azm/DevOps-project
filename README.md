# React + Vite

This template provides a minimal setup to get React working in Vite with HMR and some ESLint rules.

Currently, two official plugins are available:

- [@vitejs/plugin-react](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react) uses [Babel](https://babeljs.io/) for Fast Refresh
- [@vitejs/plugin-react-swc](https://github.com/vitejs/vite-plugin-react/blob/main/packages/plugin-react-swc) uses [SWC](https://swc.rs/) for Fast Refresh

## Expanding the ESLint configuration

If you are developing a production application, we recommend using TypeScript with type-aware lint rules enabled. Check out the [TS template](https://github.com/vitejs/vite/tree/main/packages/create-vite/template-react-ts) for information on how to integrate TypeScript and [`typescript-eslint`](https://typescript-eslint.io) in your project.

## Run with Docker 🐳

Follow these steps to build and run the React app inside Docker:

Build the Docker image:
docker build -t react-app .

Run the container:
docker run -p 5173:5173 --name react-container react-app

Open your browser and go to:
http://localhost:5173

## CI/CD Pipeline Description

This project uses **GitHub Actions** for automating the CI/CD process.  
When code is pushed or merged into the **main** branch:

- The workflow builds the React app Docker image.
- Pushes the image to **Docker Hub**.
- Optionally deploys it to **AWS EC2** using SSH.

---

## Instructions to Run and Deploy

**Run locally with Docker:**

docker build -t react-app .
docker run -p 5173:5173 --name react-container react-app

Then open http://localhost:5173

Deploy manually from Docker Hub:

docker pull duaamir/my-react-vite-app-image:latest
docker run -d -p 5173:5173 --name react-vite-container duaamir/my-react-vite-app-image

## ChangeLog

Added CI/CD workflow using GitHub Actions

Configured Docker image push to Docker Hub

Added deployment instructions
