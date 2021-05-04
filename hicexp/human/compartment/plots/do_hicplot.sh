for f in ../*_pearson_all.h5
do
	bn=`basename $f`

	if [[ ! ${bn} =~ ".40000_" ]] &&  [[ ! ${bn} =~ ".20000_" ]]
	then 
		rn=`echo $bn | sed "s/_pearson_all.h5//g"`

		qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn} plot.pbs
	fi
done
