
for f in  ../run/*.bedpe.gz
do
    bn=`basename $f`
    sam_name=`echo $bn | sed 's#.bedpe.gz##g'`   
    
    for res in 400000 150000 40000 20000
    do 
        full_name=`echo $sam_name.$res.iced.matrix.gz`
        if ! [ -f $full_name ]
        then
            echo ... $full_name
            qsub -N ice.$sam_name -v inp=$f,out=$full_name,res=$res ice.pbs
            sleep 1
	    fi
    done
done

