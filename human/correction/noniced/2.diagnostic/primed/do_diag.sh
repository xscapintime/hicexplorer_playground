for f in ../../../../cool2h5/*.cool.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.h5//g"`

        qsub -N ${rn}_hicDiagnostic -v inp=$f,out=${rn} diagnostic_plot.pbs
done
