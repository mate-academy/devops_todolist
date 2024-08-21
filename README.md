[Docker Hub App Image](https://hub.docker.com/repository/docker/artemmalikov/todoapp/general)

# Setup & Run

1. Run Docker Desktop

2. Pull the image:

   ```bash
   docker pull artemmalikov/todoapp:1.0.0
   ```

3. Run the app:

   ```bash
   docker run -p 8080:8080 artemmalikov/todoapp:1.0.0
   ```

4. Visit the http://localhost:8080

## Task

Create a `Dockerfile` for the ToDo app:

1. Fork this repository.
1. ToDo app should start inside a container without an error.
1. `Dockerfile` should contain the build stage and run stage.
1. Add `ARG` as Python base image version in `Dockerfile`.
1. Execute database migration as `RUN` instruction.
1. Add the `ENV PYTHONUNBUFFERED=1` variable to optimize the Python app for Docker (writing logs directly to `stdout` and `stderr` without buffering in the app process memory.
1. `runserver` should be followed by the `0.0.0.0:8080` parameter to start the Django server properly.
1. Build an image and name it `todoapp`.
1. The image should be pushed to your personal Docker Hub account into the `todoapp` repository with the `1.0.0` tag (`todoapp:1.0.0`).
1. `README.md` should contain a link to your personal Docker Hub repository win an app image.
1. `README.md` should contain all the instructions for building and running the container.
1. `README.md` should contain instructions on accessing the application via a browser.
1. Create PR with your changes and attach it for validation on a platform.
