#!/bin/bash

mapfile -t scripts < <(python gen_script_superni_t5.py)

echo "Generated scripts:"
printf '%s\n' "${scripts[@]}"

(trap 'kill 0' SIGINT;
    for script in "${scripts[@]}"; do
        echo "Running script: $script"
        bash "$script" &
    done
wait)