f1=../3.correct/shluc_400000_normed_corrected.h5
f2=../3.correct/hesc_primed_400000_normed_corrected.h5

# primed/naive
hicCompareMatrices -m ${f2} ${f1} \
--operation log2ratio \
-o primed_naive.400k.h5
