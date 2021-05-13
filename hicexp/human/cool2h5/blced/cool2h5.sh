for f in ../../cool/*.iced.matrix.gz.cooler
do
	bn=`basename $f`
	rn=`echo $bn | sed "s/.iced.matrix.gz.cooler//g"`
	res=`echo $bn | cut -d "." -f 2 `

	hicConvertFormat -m $f --inputFormat cool -o $rn.cool.blc.h5 --outputFormat h5 -r $res
done
