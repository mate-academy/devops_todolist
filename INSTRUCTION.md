1. [LINK TO DOCKER HUB](https://hub.docker.com/repository/docker/kuznetsb/todoapp/tags/1.0.0/sha256-7cc1c684b86e8bba6c4dedb1396f2b5507c6fad09363dc7ec2862b5d4e396eaf)
2. Run such script to run app in container
    ```bash
    docker run -d --name todoapp -p 8080:8080 kuznetsb/todoapp:1.0.0
    ```
3. Access app in you browser via [LINK](http://127.0.0.1:8080/)
