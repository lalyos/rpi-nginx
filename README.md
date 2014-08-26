Base Docker Image to run Nginx server on Raspberry Pi.

## Getting the image

The image is available from the Docker registry:
```
docker pull sequenceiq/rpi-nginx
```

## Using the image

To start nginx with the default settings:
```
docker run -d -p 8000:80 sequenceiq/rpi-nginx
```

Or if you want to just change the welcome message and the background color:
```
docker run -d -p 8000:80 \
  -e NGINX_MSG="Hello Raspberry" \
  -e NGINX_COLOR=green \
  sequenceiq/rpi-nginx
```
