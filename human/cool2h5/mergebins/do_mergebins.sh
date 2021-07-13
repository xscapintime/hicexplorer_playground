for f in ../blced/*_40000.blc.merged.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.blc.merged.h5//g"`
	gn=`echo $bn | cut -d "." -f 1`	

	echo ${rn} merge to 2Mb
	qsub -N ${rn}_mergebins -v inp=$f,out=${rn},sp=${gn} mergebins.pbs
done
