# LaTeX Resume (Docker)

This project lets you build your LaTeX resume inside a Docker container—no need to install LaTeX locally.

---

## 📦 Prerequisites
- Docker installed: https://www.docker.com/

---

## 🛠️ Build the Docker Image

```bash
docker build -t resume-builder .
```

---

## 📄 Generate Resume PDF (Live Update)

Run in **interactive mode** so that saving `.tex` files automatically rebuilds the PDF.

### 🐧 Mac / Linux
```bash
docker run --rm -it -v $(pwd):/app resume-builder
```

### 🪟 Windows (PowerShell)
```powershell
docker run --rm -it -v "${PWD}:/app" resume-builder latexmk -pvc -pdf -interaction=nonstopmode resume.tex
```

### 🪟 Windows (Command Prompt - CMD)
```cmd
docker run --rm -it -v "%cd%":/app resume-builder latexmk -pvc -pdf -interaction=nonstopmode resume.tex
```


## 📄 Generate Resume PDF (No Live Update)

### 🪟 Windows (PowerShell)
```powershell
docker run --rm -v "${PWD}:/app" resume-builder latexmk -pdf -interaction=nonstopmode resume.tex
```

### 🪟 Windows (Command Prompt - CMD)
```cmd
docker run --rm -v "%cd%":/app resume-builder latexmk -pdf -interaction=nonstopmode resume.tex
```
