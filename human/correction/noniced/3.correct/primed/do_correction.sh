for f in ../../../../cool2h5/*_40000.merged.h5
do
	bn=`basename $f`

	if [[ ${bn} =~ "_20000." ]] || [[ ${bn} =~ ".20000." ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
		#thre=`echo -2 5`
		
		#echo $rn $thre
		echo $rn -2 5 hicCorrectMatrix
                qsub -N ${rn}_hicCorrectMatrix -v inp=$f,out=${rn} hic_correct_20.pbs
	
	elif [[ ${bn} =~ "_40000." ]] || [[ ${bn} =~ ".40000." ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
		
		echo $rn -2.5 5 hicCorrectMatrix
                qsub -N ${rn}_hicCorrectMatrix -v inp=$f,out=${rn} hic_correct_40.pbs

	else
		rn=`echo $bn | sed "s/.h5//g"`
		

		echo $rn -3.5 5 hicCorrectMatrix
		qsub -N ${rn}_hicCorrectMatrix -v inp=$f,out=${rn} hic_correct_150-400.pbs
	fi
done
