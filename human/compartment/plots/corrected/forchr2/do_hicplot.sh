for f in ../../../corrected/*_pearson_all.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/_pearson_all.h5//g"`

	qsub -N ${rn}_hicplot -v inp_h5=$f,inp_pc1=../../../corrected/${rn}.pca1.bw,out=${rn} plot.pbs
done
