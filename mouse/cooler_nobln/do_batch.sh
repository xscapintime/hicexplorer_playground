
for f in  ../run/*.bedpe.gz
do
    bn=`basename $f`
    rn=`echo $bn | sed 's#.bedpe.gz##g'`   
    
    for res in 20000 40000 150000 400000
    do 
        full_name=`echo $rn.$res.cloadp.cool`
        if ! [ -f $full_name ]
        then
            echo ... $full_name
            qsub -N ${rn}.cloading -v inp=$f,out=$full_name,res=$res nobalance.pbs
            sleep 1
	    fi
    done
done

