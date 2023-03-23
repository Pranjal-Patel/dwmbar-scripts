vol="$(pactl get-sink-volume 0 | awk -F' ' '{ print $5 }')"
echo "Vol: $vol"
