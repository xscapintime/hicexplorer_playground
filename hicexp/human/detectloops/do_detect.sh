for f in ../cool/*.gz
do
	bn=`basename $f`
	rn=`echo ${bn} | sed "s/.matrix.gz//g"`

	qsub -N ${rn}_hicDetectLoops -v input=${f},output=${rn}.loops.bedgraph detectloops.pbs
done
