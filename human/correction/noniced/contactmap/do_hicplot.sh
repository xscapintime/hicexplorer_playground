for f in ../3.correct/*.h5
#for f in ../../h5/mergebins/*.h5
do
	bn=`basename $f`
	
	if [[ ${bn} =~ "_20000_" ]] #&& [[ ! ${bn} =~ "_40000_" ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
		echo $rn chr9 contact map
		qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.036,vmax=260 plot_chr9.pbs
	
	elif [[ ${bn} =~ "_40000_" ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
                echo $rn chr9 contact map
                qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.07,vmax=250 plot_chr9.pbs
	

	elif [[ ${bn} =~ "_150000_" ]]
        then
                rn=`echo $bn | sed "s/.h5//g"`
                echo $rn chr9 contact map
                qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.15,vmax=650 plot_chr9.pbs

	elif [[ ${bn} =~ "_400000_" ]]
	then
                rn=`echo $bn | sed "s/.h5//g"`
                echo $rn chr9 contact map
                qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.3,vmax=1600 plot_chr9.pbs


	fi

done
