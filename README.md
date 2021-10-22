# Linux. Добавляем пункт "Отправить адресату" в контекстное меню файла(ов) в PcmanFM.

## Что делаем:
```
mkdir -p ~/.local/share/file-manager/actions

cat <<EOF > ~/.local/share/file-manager/actions/Send2Addr.desktop

[Desktop Entry]
Encoding=UTF-8
Type=Application
Name=Send to email
Name[ru]=Отправить на email
Terminal=false
Profiles=profile-zero
Comment=Send file by email
Comment[ru]=Отправить файл по эл.почте
Icon=thunderbird

[X-Action-Profile profile-zero]
MimeTypes=all/allfiles;
Exec=/usr/lib/thunderbird/thunderbird -compose attachment="%f"
EOF
```

Далее вырубаем сессию и заходим снова. Должен появиться пункт контекстного меню.

## Ограничения: 

Я использую Thunderbird в качестве почтового клиента, поэтому строка запуска и иконка пункта меню адаптированы под него

Для вложения нескольких файлов разом надо бы наваять промежуточный скрипт, который  будет «скармиливать»  почтовому клиенту файлы в нужной последовательности и обрамлении. Можно будет сразу и проверку максимального размера вложенных файлов организовать.

## Использованная инфа:

https://askubuntu.com/questions/936896/how-can-i-add-a-menu-item-to-the-right-click-of-different-file-managers

https://forum.archlabslinux.com/t/pcmanfm-open-terminal-here-from-context-menu/804

https://unix.stackexchange.com/questions/510207/mime-type-for-all-files-linux

https://stackoverflow.com/questions/27836576/adding-several-attachments-to-thunderbird-from-command-line