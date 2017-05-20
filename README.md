# docker-dlna

Docker image with MiniDLNA installed that shares `/media` container directory over DLNA.

### Using the image

* Install docker

* Run the following command:

```
docker run -d --name docker-dlna --net host -v </your/media/location>:/media simplyadrian/docker-dlna
```

* Stream your media on a UPnP/DLNA compliant device.
