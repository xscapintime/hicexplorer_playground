for cool in *.cool
do
	#rn=`echo ${cool} | sed "s/.iced.matrix.gz//g"`

	hicInfo -m ${cool} -o ${cool}.info.txt
done
