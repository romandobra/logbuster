mysql -s -N -e \
    "SELECT table_schema AS "db", SUM(data_length + index_length) / 1024 / 1024 AS "MB" \
    FROM information_schema.TABLES \
    GROUP BY table_schema"
