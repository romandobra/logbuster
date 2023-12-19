_res=$(grep -q postfix /var/log/maillog \
    && {
            grep 'status=' /var/log/maillog \
                | cut -d'=' -f7 \
                | cut -d' ' -f1 \
                | sort -u
        } \
    || {
            grep -Po 'stat=(.*)' /var/log/maillog \
            | cut -d'=' -f2 \
            | cut -d' ' -f1 \
            | sort -u
        })

echo -e $_res
