#!/bin/sh -u

new=""
while read -r line; do
    if [ "$new" = "" ]; then
        if [ "$line" != name,sw_number ]; then
            printf "Error: Invarid Header\n" > /dev/stderr
            printf "Header should be name,sw_number\n" > /dev/stderr
            exit
        fi
    else
        printf "%s\n" "$line"
    fi
    new=defined
done < config.csv |
    while IFS=, read -r output_filename sw_number; do
        gpio_number="$(awk -v sw_number="$sw_number" '$1 == sw_number {print $2}' sw_to_gpio.tsv)"
        awk -vgpio_number="$gpio_number" 'NR == 1 {print; printf "# Set the gpio port number\nport=%d\n\n", gpio_number} NR > 1' < template.sh > "$output_filename.sh"
        # make the output file executable
        chmod +x "$output_filename.sh"
    done
