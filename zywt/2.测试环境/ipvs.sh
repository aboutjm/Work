#!/bin/bash
IPVS=`ipvsadm -Lcn`
for (( i=0;i <= 60; i++ ))
do
     echo `date '+%Y年%m月%d日 %T %A'` >>/tmp/ipvs.txt
     echo " " >>/tmp/ipvs.txt
     echo -e "$IPVS\n" >>/tmp/ipvs.txt
     sleep 60
done
