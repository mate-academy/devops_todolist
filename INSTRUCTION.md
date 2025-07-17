# INSTRUCTION.md

## 🔗 Docker Hub
Образ доступний тут:  
https://hub.docker.com/r/denysanakonda/todoapp (тег `1.0.0`)

## ⚙ Як зібрати образ
```bash
docker build --build-arg PYTHON_VERSION=3.10-slim -t todoapp:1.0.0 .
