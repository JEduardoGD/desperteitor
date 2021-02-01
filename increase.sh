#!/bin/bash

#minutos para alcanzar e volument total
TOTAL_TIME=10;
#ciclos para alcanzar el volumen total
TOTAL_CYCLES=50
#volumen minimo
INITIAL_VOLUME=30
#volumen máximo
FINAL_VOLUME=100

#segundos para alcanzar el volument total
TOTAL_TIME_SECONDS=$((TOTAL_TIME * 60))
CYCLE_SLEEP=$((TOTAL_TIME_SECONDS / TOTAL_CYCLES))
num1=$((FINAL_VOLUME - INITIAL_VOLUME))
div=`echo $num1 / $TOTAL_CYCLES | bc -l`

for i in $( eval echo {1..$TOTAL_CYCLES} )
do
	echo "ciclo $i de $TOTAL_CYCLES"
	m=`echo $i \* $div | bc -l`
	n=`echo $m | awk '{print int($1)}'`
	CURRENT_VOLUME=$((INITIAL_VOLUME + n))
	COMMAND="/usr/bin/amixer -c 0 sset Headphone,0 $CURRENT_VOLUME% > /dev/null"
	echo "Running \"$COMMAND\"..."
	$(eval  "$COMMAND")
	echo "sleep $CYCLE_SLEEP segundos..."
	sleep $((CYCLE_SLEEP))
	echo "...and continue"
done
