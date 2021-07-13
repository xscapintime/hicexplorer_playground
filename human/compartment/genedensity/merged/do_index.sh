for f in *.bam
do
	rn=`echo $f | sed "s/.bam//g"`
	qsub -N ${rn}_index -v inp=$f,out=${rn} bamindex.pbs
done
