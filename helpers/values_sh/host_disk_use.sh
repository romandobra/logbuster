df -k --output=pcent 2>/dev/null \
    | grep -v U \
    | cut -d'%' -f1 \
    | sort -u \
    | tail -1 \
    | xargs
