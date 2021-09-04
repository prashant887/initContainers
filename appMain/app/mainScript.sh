#!/bin/sh

dt=`date +%Y-%m-%d:%H-%M-%S`

echo "$0 - Started @ $dt" >> /log/common.log

filename='/input/spacestation.out'
n=1
while read line; do
# reading each line
echo "Line No. $n : $line" >> /log/filecontent.log
n=$((n+1))
sleep 20
done < $filename

dt=`date +%Y-%m-%d:%H-%M-%S`

echo "$0 - Ended @ $dt" >> /log/common.log

tail -f /input/spacestation.out
