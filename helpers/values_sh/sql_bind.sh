mysql -s -N -e \
    "set @@global.show_compatibility_56=1; \
    select variable_value \
    from information_schema.global_variables \
    where variable_name = 'BIND_ADDRESS';"
