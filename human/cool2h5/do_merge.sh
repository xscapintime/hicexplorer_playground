for f in *_r1.*.cloadp.cool.h5
do
	bn=`basename $f`
	#rn=`echo $bn | sed "s/.cool.blc.h5//g"`
	
	if [[ ${bn} =~ ".10000." ]] || [[ ${bn} =~ ".5000." ]]
	then
		gene=`echo $bn | cut -d "_" -f 1,2`
		res=`echo $bn | cut -d "." -f 2`
		root=`echo $bn | cut -d "." -f 3,4,5`
		#rep1=`echo ${gene}_rp1`
		#rep2=`echo ${gene}_rp2`

		echo ${gene}.${res} merging
		echo ${gene}_r1.${res}.${root} ${gene}_r2.${res}.${root}
		qsub -N ${bn}_merging -v inp1=${gene}_r1.${res}.${root},inp2=${gene}_r2.${res}.${root},out=${gene}_${res} hicsummat.pbs
		
	fi
done

