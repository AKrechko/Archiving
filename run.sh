#!/bin/bash
CURRENTDATE=`date +"%d%m%Y"`
SOURCE_DIR='/home/user/' # Путь до папки какую архивируем
TARGET_DIR='/media/ssd/Data/' # Путь где сохранить архив
FILE_NAME=${TARGET_DIR}${CURRENTDATE}.tar # Имя архива
tar --exclude="/home/user/.cache" --exclude="/home/user/.local/share/Steam" -cf ${FILE_NAME} ${SOURCE_DIR}
