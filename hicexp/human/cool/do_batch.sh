
for f in  ../run/*_r1.bedpe.gz
do
    bn=`basename $f`
    sam_name=`echo $bn | sed 's#.bedpe.gz##g'`   
    
    for res in 20000
    do 
        full_name=`echo $sam_name.$res.iced.matrix.gz`
        if ! [ -f $full_name ]
        then
            echo ... $full_name
            qsub -N ${sam_name}.cloading -v inp=$f,out=$full_name,res=$res nobalance.pbs
            sleep 1
	    fi
    done
done

