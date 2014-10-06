monitorix in docker
===================

Two ways to run, with *--net host* or without.

```docker run -it -p 8080:8080 monitorix```

```docker run -it --net host monitorix```

You may also pass a different port to the container using

```docker run -it --net host -e MONITORIX_PORT=1234 monitorix```

