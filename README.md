# docker-chowdown

Docker image with `chowdown` in it -- see [clarklab/chowdown](https://github.com/clarklab/chowdown) for more info.

NOTE: it doesn't actually work yet.

## Usage

Then you can run a new container, setting port = 4000:

```
docker run --name chowdown -it \
    -p 4000:4000
    -v $(pwd)\chowdown:/data/chowdown
    didc/docker-chowdown
```

## Disclaimer

This docker image is in no way affiliated with, authorized, maintained or endorsed by Chowdown or anyone else. This is an independent and unofficial project trying to make Chowdown docker-friendly. Use at your own risk.
