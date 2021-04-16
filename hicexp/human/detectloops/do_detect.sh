for f in ../cooler_nobln/*.cool
do
	bn=`basename $f`
	#rn=`echo ${bn} | sed "s/.iced.matrix.gz//g"`
	
	if ! [ -f ${bn}.loops.bedgraph ]
	then
		echo ${bn}.loops.bedgraph
		qsub -N ${bn}_hicDetectLoops -v input=${f},output=${bn}.loops.bedgraph detectloops.pbs
		sleep 0.1
	fi
done
