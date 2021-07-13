for f in ../corrected/*_400000_corrected.h5
do
	bn=`basename $f`
	
	if [[ ! ${bn} =~ "_20000_" ]] && [[ ! ${bn} =~ "_40000_" ]]
	then
		rn=`echo $bn | sed "s/_corrected.h5//g"`
		echo $rn contact map
		qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn} plot_chr2.pbs
	fi
done
