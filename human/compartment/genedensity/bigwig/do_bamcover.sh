for f in ../merged/*.bam
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.bam//g"`

	qsub -N ${rn}_bamCoverage -v inp=$f,out=${rn} bam2bw.pbs
done
