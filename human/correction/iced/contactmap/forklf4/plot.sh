for f in ../../corrected/hesc_primed_40000_corrected.h5
do
        bn=`basename $f`
        rn=`echo $bn | sed "s/.h5//g"`

        hicPlotMatrix -m ${f} --outFileName ${rn}.klf4.png \
                --log1p \
                --clearMaskedBins \
                --colorMap Reds \
                --fontsize 7 \
                --region 9:102000000-110000000 \
                --dpi 300

done
