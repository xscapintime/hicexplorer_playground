for f in *_merge.loops.bedgraph
do
	rn=`echo $f | sed "s/.loops.bedgraph//g"`
	
	cat $f | awk '($3 != $5)' > ${rn}.rmadj.loops.bedgraph
done
