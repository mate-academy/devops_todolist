# To run the App 

1. Get the image from Registry:

```
docker pull anatolich911/todo-app:1.0.2
```
2. Check if the image is available local

```
docker images
```
3. Start you container, make sure you added exposed port 8080! 
```
docker run -p 8080:8080 anatolich911/todo-app:1.0.2
```

4. Now you can browse the [API](http://localhost:8080/api/) or start on the [landing page](http://localhost:8080/).
