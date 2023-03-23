hdd="$(df -h /home | grep dev | awk '{print$3, " "  $5}')"
tmp="$(sensors | grep 'Composite' | awk '{ print $2 }' | cut -b 2-5)"
echo "SSD: $hdd, $tmp C"
