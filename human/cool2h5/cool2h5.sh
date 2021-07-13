for f in ../cooler_nobln/*.cool
do
	bn=`basename $f`
	res=`echo $bn | cut -d "." -f 2 `

	hicConvertFormat -m $f --inputFormat cool -o $bn.h5 --outputFormat h5 -r $res
done
