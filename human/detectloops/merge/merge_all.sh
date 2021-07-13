for f in ../*20000*.bedgraph
do
        bn=`basename $f`
        rn=`echo $bn | sed "s/.cloadp.cool.loops.bedgraph//g"`
        gene=`echo $bn | cut -d "_" -f 1,2`
        #res=`echo $rn | cut -d "." -f 2`

        hicMergeLoops  -i $f \
                ../${gene}_*.40000.cloadp.cool.loops.bedgraph \
                ../${gene}_*.150000.cloadp.cool.loops.bedgraph \
                ../${gene}_*.400000.cloadp.cool.loops.bedgraph \
                -o ${gene}_merge.loops.bedgraph -r 20000
done
