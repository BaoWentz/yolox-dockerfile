xhost +local:${USER}
WORK_DIR=${PWD}
docker run --gpus all -it \
--rm -e DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix \
-u $(id -u) \
-v ${PWD}:${WORK_DIR} \
-v /home/ecnu-lzw/bwz/ocr-gy:/home/ecnu-lzw/bwz/ocr-gy \
-w ${WORK_DIR} \
--name yolox \
--ipc=host \
-e QT_X11_NO_MITSHM=1 \
-e PYTHONPATH=${WORK_DIR} \
--user root \
yolox

# cd /home/ecnu-lzw/bwz/ocr-gy/yolox-dockerfile
# ./run-docker.sh
