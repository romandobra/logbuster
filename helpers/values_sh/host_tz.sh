timedatectl status \
    | grep 'Time zone' \
    | cut -d':' -f2- \
    | tr -d ' '
