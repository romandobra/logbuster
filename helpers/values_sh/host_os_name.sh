cat /etc/os-release \
    | grep -e '^ID=' \
    | cut -d'=' -f2 | tr -d '\"'
