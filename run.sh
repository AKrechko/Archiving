# Сохранить локально
#!/bin/bash
CURRENTDATE=`date +"%d%m%Y"`
SOURCE_DIR='/home/user/' # Путь до папки какую архивируем
TARGET_DIR='/media/ssd/Data/' # Путь где сохранить архив
FILE_NAME=${TARGET_DIR}${CURRENTDATE}.tar # Имя архива
tar --exclude="/home/user/.cache" --exclude="/home/user/.local/share/Steam" -cvf ${FILE_NAME} ${SOURCE_DIR}



# Сохранить в шару
#!/bin/bash
CURRENTDATE=`date +"%d%m%Y"`
SOURCE_DIR='/home/user/' # Путь до папки какую архивируем
TARGET_DIR='/mnt/NAS/Backups/' # Путь где сохранить архив
FILE_NAME=${TARGET_DIR}${CURRENTDATE}.tar # Имя архива
sudo mount -t cifs //10.0.0.1/ssd /mnt/NAS -o username='user',password='###',vers=2.0
tar --exclude="/home/user/.cache" --exclude="/home/user/Downloads" --exclude="/home/user/Videos" --exclude="/home/user/.local/share/Steam" -cvf ${FILE_NAME} ${SOURCE_DIR}
sudo umount /mnt/NAS
