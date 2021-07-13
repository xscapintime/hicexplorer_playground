for f in ../../../corrected/signflip/hesc_primed_150000_corrected_pearson_all.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/_pearson_all.h5//g"`

	#qsub -N ${rn}_hicplot -v inp_h5=$f,inp_pc1=../../../corrected/${rn}.pca1.bw,out=${rn} plot.pbs
	
	hicPlotMatrix -m ${f} --outFileName ${rn}.pearson.chr9.png \
--fontsize 7 \
--perChromosome \
--chromosomeOrder chr9 \
--dpi 300 \
--bigwig ../../../corrected/signflip/${rn}.pca1.bw ../../../genedensity/bigwig/Hs_esc_primed_H1_day0.merged.bw \
--increaseFigureHeight 0.7

done
