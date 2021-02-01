#!/bin/bash
# Сообщить за сколько времени прошла архивация
TIMEFORMAT="время выполнения %lR"
time {
CURRENTDATE=`date +"%d%m%Y"`
# Путь до папки какую архивируем
SOURCE_DIR='/home/user/'
# Путь где сохранить архив
TARGET_DIR='/media/ssd/Data/'
# Имя архива
FILE_NAME=${TARGET_DIR}${CURRENTDATE}.tar
# Начало архивации
tar --exclude="/home/user/.cache" --exclude="/home/user/VirtualBox VMs" --exclude="/home/user/.local/share/Steam" -cf ${FILE_NAME} ${SOURCE_DIR}
}
