# Instructions for Deploying and Testing ToDo Application

## 1. How to Apply Manifests
```bash
kubectl apply -f .infrastructure/namespace.yml
kubectl apply -f .infrastructure/todoapp-pod.yml
kubectl apply -f .infrastructure/busybox.yml
```

## 2. How to Test using Port-Forward
```bash
kubectl port-forward pod/todoapp 8000:8000 -n todoapp
```
URL: http://127.0.0.1:8000
