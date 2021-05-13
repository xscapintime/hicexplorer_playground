for f in ../../cool2h5/blced/*.merged.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.blc.merged.h5//g"`

        qsub -N ${rn}_hicDiagnostic -v inp=$f,out=${rn} diagnostic_plot.pbs
done
