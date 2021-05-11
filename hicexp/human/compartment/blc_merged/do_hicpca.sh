for f in ../../cool2h5/blced/*.merged.h5
do
	 bn=`basename $f`

	 #if [[ ! ${bn} =~ "_20000." ]] #&&  [[ ! ${bn} =~ ".40000." ]]
	 #then
		rn=`echo $bn | sed "s/.blc.merged.h5//g"`
		qsub -N ${rn}_hicPCA -v inp=$f,out=${rn} hicpca.pbs
	 #fi
	 #echo $bn "============= hicPCA ============="
	 #hicPCA -m $f --outputFileName ${rn}.pca1.bw ${rn}.pca2.bw --format bigwig
done
