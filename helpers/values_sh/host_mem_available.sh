cat /proc/meminfo \
    | grep MemAvailable \
    | cut -d':' -f2 \
    | rev \
    | cut -d' ' -f2 \
    | rev
