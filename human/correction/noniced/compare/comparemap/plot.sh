bw1=/home/liyang/data3/otherLoops/hicexp/human/compartment/genedensity/bigwig/Hs_esc_primed_H1_day0.merged.bw
bw2=/home/liyang/data3/hrnpu_hic/compartment/genedensity/bigwig/Hs_esc_shluc.merged.bw

for f in ../*.400k.h5
do
        bn=`basename $f`
        rn=`echo $bn | sed "s/.h5//g"`

        hicPlotMatrix -m ${f} --outFileName ${rn}.klf4.rna.v2.png \
                --log1p \
                --clearMaskedBins \
                --colorMap coolwarm \
                --fontsize 7 \
		--region 9:100000000-118000000 \
                --dpi 300 \
		--bigwig ${bw1} ${bw2} \
		--increaseFigureHeight 1.0 \
		--scaleFactorBigwig 2.0

done


#--region 9:90000000-120000000 \
