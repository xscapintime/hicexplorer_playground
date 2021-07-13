#for f in ../*.cloadp.cool.h5
for f in ../mergebins/hesc_primed_merged_2m.h5
do
	bn=`basename $f`
	
	if [[ ! ${bn} =~ ".20000." ]] && [[ ! ${bn} =~ ".40000." ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
		echo $rn test non-balanced contact map
		qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn} plot_chr2.pbs
	fi
done
