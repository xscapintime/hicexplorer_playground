for f in ../../correction/noniced/3.correct/*.h5
do
	 bn=`basename $f`
	
	 if [[ ! ${bn} =~ "_20000_" ]]
	 then
	 	rn=`echo $bn | sed "s/.h5//g"`
		gene=`echo $bn | cut -d "_" -f 1`

       	 	qsub -N ${rn}_hicPCA -v inp=$f,out=${rn},sp=${gene} hicpca_bdg.pbs
	 fi
done
