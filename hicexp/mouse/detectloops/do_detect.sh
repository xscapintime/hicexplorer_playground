for f in ../cooler_nobln/*.cool
do
	bn=`basename $f`
	#rn=`echo ${bn} | sed "s/.matrix.gz//g"`

	qsub -N ${bn}_hicDetectLoops -v input=${f},output=${bn}.loops.bedgraph detectloops.pbs
done
