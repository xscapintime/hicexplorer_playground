for f in ../cool/*.cool
do
	bn=`basename $f`
	rn=`echo ${bn} | sed "s/.iced.matrix.gz//g"`

	qsub -N ${rn}_hicDetectLoops -v input=${f},output=${rn}.loops.bedgraph detectloops.pbs
done
