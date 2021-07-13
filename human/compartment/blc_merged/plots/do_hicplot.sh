for f in ../*_pearson_all.h5
do
	bn=`basename $f`

	if [[ ! ${bn} =~ "_40000_" ]] &&  [[ ! ${bn} =~ "_20000_" ]]
	then 
		rn=`echo $bn | sed "s/_pearson_all.h5//g"`

		qsub -N ${rn}_hicplot -v inp_h5=$f,inp_pc1=../${rn}.pca1.bw,out=${rn} plot.pbs
	fi
done
