for f in ../cool2h5/*.h5
do
	 bn=`basename $f`
	 rn=`echo $bn | sed "s/.cloadp.cool.h5//g"`

       	 qsub -N ${rn}_hicPCA -v inp=$f,out=${rn} hicpca.pbs

	 #echo $bn "============= hicPCA ============="
	 #hicPCA -m $f --outputFileName ${rn}.pca1.bw ${rn}.pca2.bw --format bigwig
done
