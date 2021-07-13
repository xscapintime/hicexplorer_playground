for f in ../../0.normalize/*_normed.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.h5//g"`

        qsub -N ${rn}_hicDiagnostic -v inp=$f,out=${rn} diagnostic_plot.pbs
done
