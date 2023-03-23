mem="$(free -h | awk '/Mem:/ {printf $3 " / " $2}')"
echo "Mem: $mem"
