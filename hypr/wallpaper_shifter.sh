#!/bin/bash
# Папка с обоями
DIR="$HOME/Изображения/wallpaper"
# Текущие обои (узнаем у swww)
CURRENT=$(swww query | awk -R '{print $NF}')
# Список всех файлов
FILES=($DIR/*)

# Логика выбора следующего файла
for i in "${!FILES[@]}"; do
   if [[ "${FILES[$i]}" == "${CURRENT}" ]]; then
       NEXT_INDEX=$(( (i + 1) % ${#FILES[@]} ))
       swww img "${FILES[$NEXT_INDEX]}" --transition-type outer
       exit
   fi
done
# Если текущий не найден, просто ставим первый
swww img "${FILES[0]}"
