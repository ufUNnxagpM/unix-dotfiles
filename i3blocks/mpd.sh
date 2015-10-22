#!/bin/sh
#check variable counts the word playing in output of mpc
check=$(mpc | grep -c playing)
if [ $check -gt 0 ]
then
mout=$(mpc | sed -n '1p')
mout="$mout «"
echo $mout
else
echo " "
fi
exit 0
