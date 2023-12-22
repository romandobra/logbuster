{
    ps aux \
        | egrep '(apache|httpd)' \
        | grep -v root \
        | cut -d' ' -f1

    grep -wr User /etc/httpd/conf/httpd.conf \
    | grep -v Log \
    | cut -d' ' -f2
} | sort -u
