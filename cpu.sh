cpu() {
    read cpu a b c previdle rest < /proc/stat
        prevtotal=$((a+b+c+previdle))
        sleep 0.5
            read cpu a b c idle rest < /proc/stat
            total=$((a+b+c+idle))
                cpu=$((100*( (total-prevtotal) - (idle-previdle) ) / (total-prevtotal) ))
                echo " CPU: $cpu% "
}

fan() {
    speed=$(sensors | grep 'cpu_fan' | awk '{ print $2, $3 }')
    echo "$speed"
}

ctemp() {
  tmp=$(sensors | grep 'Package id 0' | cut -b 17-18)
  echo "$tmp C"
}

echo "$(cpu) $(ctemp), Fan: $(fan)"
