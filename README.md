# Dockerizing Django Blog


Here I have Dockerized [Django-blog](https://github.com/kaustubha-chaturvedi/Django-Blog) that I created Earlier.

Docker if tool to Containerize Projects, making production deployment easier.

Here I used python:3.9-slim to containerize Blog made on Django and have used apache2 and apache mod-wsgi for serving Blog.
***
Alternate Method to this could be using Nginx and Gunicorn for deployment.
***
## To use this follow these steps:

1. Go To [this page](https://www.docker.com/products/docker-desktop) and download docker desktop and install it.
1. Clone this repo.
1. Start Docker Desktop from start menu.
1. Navigate to clone folder.
1. Open terminal there.
1. Pass command **docker compose up** in terminal.

### Done. Now you have runnig instance of Dockerized django Blog.