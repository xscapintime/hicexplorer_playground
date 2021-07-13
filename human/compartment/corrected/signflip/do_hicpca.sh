for f in ../../../correction/corrected/*_corrected.h5
do
	 bn=`basename $f`
	
	 if [[ ! ${bn} =~ "_20000_" ]]
	 then
	 	rn=`echo $bn | sed "s/.h5//g"`

       	 	qsub -N ${rn}_hicPCA -v inp=$f,out=${rn} hicpca.pbs
	 fi
	 #echo $bn "============= hicPCA ============="
	 #hicPCA -m $f --outputFileName ${rn}.pca1.bw ${rn}.pca2.bw --format bigwig
done
