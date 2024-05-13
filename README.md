1. https://hub.docker.com/repository/docker/yegorv/todoapp/tags
2. instructions

    1. I have created the dockerfile named "todo-list-dockerfile" subfolder of the project root
    2. dockerfile code is:

        ```python
        ARG PYTHON_VERSION=3.12
        FROM python:${PYTHON_VERSION} as base
        # use full python version as base layer, hovewer slim versiion on this stage works identically
        # later on we can adjust the version if necessary thanks to ARG instruction

        WORKDIR /app
        # creating and chenging directory to new working /app dir

        COPY .   ./
        # copying everything from the context directory to created /app 

        FROM python:${PYTHON_VERSION}-slim as run
        # using slim version of python in order to lower the image size
        # creating new stage - I did not get the reason why - but the task acomplished:
        # if we were using slim python version from the beginning 
        # and not using multistaging the image size would be exactly same 174MB


        WORKDIR /app
        # creating and chenging directory to new working /app dir

        COPY --from=base /app .
        # copying everything from the base stage to created /app 

        RUN pip install --no-cache-dir -r requirements.txt && \
            python manage.py migrate
        # running install of dependancies and migration as one command to reduce layers quantity

        ENV PYTHONUNBUFFERED=1
        # Add the ENV PYTHONUNBUFFERED=1 variable to optimize the Python app for Docker (writing logs directly to stdout and stderr without buffering in the app process memory.

        EXPOSE 8080
        # make the required port visible from outside of container

        ENTRYPOINT python manage.py runserver 0.0.0.0:8080
        # starting server
        ```
    3. built the image

        built with command, while treminal directory set to project root in order to copy context files properly

        `docker build . -f dir_for_dockerfile\todo-list-dockerfile -t todoapp:1.0.0`
    4. created docker account
    5. logged in with pycharm
    6. pushed to repository
3. application accessed via [127.0.0.1:80](http://127.0.0.1:8000/)80