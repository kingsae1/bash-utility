echo "==========================================================="
echo "Memory usage @ kingsae"
echo "==========================================================="
cat /proc/meminfo | numfmt --field 2 --from-unit=Ki --to-unit=Gi | sed 's/ kB/G/g' | grep MemTotal
echo "==========================================================="
ps -eo pid,ppid,cmd,%mem,%cpu --sort=-%mem | head

echo "==========================================================="
df -h
<<<<<<< HEAD
=======

>>>>>>> 595fe2e (update file)
