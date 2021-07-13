for f in *_all.res.txt
#for f in *_chr9.res.txt
do

	sc=`cat $f | grep "max" | cut -d ":" -f 3,4,5`
	echo $f $sc >> scale_value_forall.txt
done
