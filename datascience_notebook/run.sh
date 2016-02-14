docker run -it --rm \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    -e DISPLAY=unix$DISPLAY \
    --device /dev/dri \
    -v $PWD:/shared \
    -w /shared \
    -p 8888:8888 \
    guyallard/datascience-notebook $1

