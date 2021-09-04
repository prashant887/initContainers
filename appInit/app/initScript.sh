#!/bin/sh

dt=`date +%Y-%m-%d:%H-%M-%S`
echo "$0 - Started @ $dt" >> /log/common.log
a=0

while [ $a -lt 30 ]
do

   curl http://api.open-notify.org/iss-now.json >> /output/spacestation.out
   echo "" >> /output/spacestation.out
   sleep 10
   a=`expr $a + 1`
done
dt=`date +%Y-%m-%d:%H-%M-%S`

echo "$0 - Ended @ $dt" >> /log/common.log
