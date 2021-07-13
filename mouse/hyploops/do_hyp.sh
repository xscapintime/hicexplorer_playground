for f in ../cool/*.cooler
do
	bn=`basename $f`
	rn=`echo ${bn} | sed "s/.iced.matrix.gz//g"`

	for p in ../pbed/ctcf*.bed
	do
		qsub -N ${rn}_hicDetectLoops -v inm=${f},inp=${p},out=${rn}.hyperopt_result.txt hyperopt.pbs
		#hicHyperoptDetectLoops -m $f -p ../ctcfbed/CTCF.bed -ml 200000 -o ${output}
	done
done

