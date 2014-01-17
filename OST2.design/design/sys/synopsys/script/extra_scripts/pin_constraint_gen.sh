#! /bin/sh
#ex) set_pin_physical_constraints -pin_name {gclk} -layers {metal2} -width 0.05 -depth 0.05 -side 4 -order 107
#usage:
#./pin_constraint_gen.sh gclk 4 100 1

pin=$1
side=$2
order_start=$3
vector_width=`expr $4 - 1`

if [ $side == "1" ] || [ $side == "3" ]; then
  metal="metal3"
else
  metal="metal2"
fi

o=$order_start
if [ $vector_width == 0 ]; then 
	echo "set_pin_physical_constraints -pin_name {$pin} -layers {$metal} -width 0.05 -depth 0.05 -side $side -order $o" 
else
	for i in `seq 0 $vector_width`
	do
	  echo "set_pin_physical_constraints -pin_name {$pin[$i]} -layers {$metal} -width 0.05 -depth 0.05 -side $side -order $o" 
	  o=`expr $o + 1`
	done
fi

