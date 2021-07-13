for f in ../../cool2h5/blced/*.merged.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.blc.merged.h5//g"`
			
	echo $rn -1.5 5 hicCorrectMatrix

        qsub -N ${rn}_hicCorrectMatrix -v inp=$f,out=${rn} hic_correct.pbs
	

	
done
