dstat -tcdmrs --integer --output file > /dev/null &


NB_P="ft.A.x"

while true
do
echo `date "+%T"` "`ps -ef | grep "NB_P" | wc -l`" >> "file.txt"

sleep 1
done

