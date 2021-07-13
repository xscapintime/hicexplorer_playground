#for f in ../../correction/noniced/3.correct/*.h5
for f in ../../correction/noniced/3.correct/hesc_primed_40000_normed_corrected.h5
do
	bn=`basename $f`
	rn=`echo ${bn} | sed "s/.h5//g"`
	
	if ! [ -f ${bn}.loops.bedgraph ]
	then
		echo ${bn}.loops.bedgraph
		qsub -N ${bn}_hicDetectLoops -v inp=${f},out=${rn} detectloops.pbs
		sleep 0.1
	fi
done
