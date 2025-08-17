#!/usr/bin/env bash

common_dir="./common"
client_dir="./client"

find "$common_dir" -type f | while read -r common_file; do
    rel_path="${common_file#$common_dir/}"
    client_file="$client_dir/$rel_path"

    if [ -f "$client_file" ]; then
        echo "Удаляю: $client_file"
        rm -f "$client_file"
    fi
done
