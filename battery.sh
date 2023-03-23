bat() {
    battery="$(cat /sys/class/power_supply/BAT0/capacity)"
    echo "$battery %"
}

batstat() {
    bstat="$(cat /sys/class/power_supply/BAT0/status)"
    echo "$bstat"
}

echo "$(bat) $(batstat)"
