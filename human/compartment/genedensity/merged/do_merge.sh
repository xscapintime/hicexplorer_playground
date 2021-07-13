path='../bam'

for f in ${path}/*.rp1.*.bam
do
	bn=`basename $f`
	
	if [[ ${bn} =~ "_1" ]] || [[ ${bn} =~ "_2" ]]
	then	
		if [[ ! ${bn} =~ "_2" ]]
		then 
			rn=`echo $bn | cut -d "_" -f 1,2,3`
		
			echo ${rn} merging bams
			echo $f
			#qsub -N ${rn}_bamMerge -v inp=$f,out=${rn} bam_merge_hnu.pbs
		fi
	else
		rn=`echo $bn | sed "s/.rp1.Aligned.sortedByCoord.out.bam//g"`

		echo ${rn} merging bams
		echo $f
		qsub -N ${rn}_bamMerge -v inp=$f,out=${rn} bam_merge.pbs
	fi
done
