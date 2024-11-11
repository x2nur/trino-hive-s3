#!/bin/sh
set -e

if [ -t 0 ]; then 
    if [ $# -eq 0 -o -z "$1" ]; then 
        comm=$(basename $0)
        printf "Usage:\n\t%s sql_query\n\t%s < sql_file\n" "$comm" "$comm"
        exit 1
    fi
    docker compose -f "$(dirname "$0")/compose.yaml" run --rm client trino --server trino:8080 --execute "$1"
else
    # sql file from stdin
    tmp=$(mktemp -d)
    sqlfile=sql.file
    cat > "$tmp/$sqlfile"
    docker compose -f "$(dirname "$0")/compose.yaml" run -iT --rm -v "$tmp":/data -w /data client trino --server trino:8080 -f "$sqlfile"
fi