cat /etc/ssh/sshd_config \
    | grep -e '^PasswordAuthentication' \
    | cut -d' ' -f2
