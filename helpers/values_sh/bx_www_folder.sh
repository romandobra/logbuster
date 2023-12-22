find /home/ -type d -path '*bitrix/modules*' -print -quit \
    | rev \
    | cut -d'/' -f4- \
    | rev
