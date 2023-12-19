cat /etc/ssh/sshd_config \
    | grep -e 'PubkeyAuthentication' \
    | cut -d' ' -f2
