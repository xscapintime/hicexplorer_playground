for f in ../../../../cool2h5/*.merged.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.h5//g"`
	
	if [ ! -f $rn_diag.png ]
	then
		echo $rn
	       #qsub -N ${rn}_hicDiagnostic -v inp=$f,out=${rn} diagnostic_plot.pbs
	fi
done
