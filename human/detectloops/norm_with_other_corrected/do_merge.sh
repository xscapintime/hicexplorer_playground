for f in hesc_primed_20000*.bedgraph
do
        bn=`basename $f`
        #rn=`echo $bn | sed "s/_normed_corrected.loops.bedgraph//g"`
	gene=`echo $bn | cut -d "_" -f 1,2`

	echo ${gene}
	qsub -N ${gene}_loopMerge -v inp=${f},sp=${gene} mergeloops.pbs
done
