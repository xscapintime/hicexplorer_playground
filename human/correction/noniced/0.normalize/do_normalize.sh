path1=../../../cool2h5
path2=../../../../../../hrnpu_hic/h5
gene=shluc

for f in ${path1}/*.merged.h5
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.merged.h5//g"`
	res=`echo $rn | cut -d "_" -f 3`
		
	echo $rn matrices in $res hicNormalize
	#echo $f vs ${path2}/${gene}_${res}.merged.h5 
        qsub -N ${rn}_hicNormalize -v inp1=$f,inp2=${path2}/${gene}_${res}.merged.h5,out1=${rn},out2=${gene}_${res} hic_normalize.pbs

done
