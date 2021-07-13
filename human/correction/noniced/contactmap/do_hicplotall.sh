for f in ../3.correct/*.h5
do
	bn=`basename $f`
	
	if [[ ${bn} =~ "_20000_" ]] || [[ ${bn} =~ "_40000_" ]]
	then
		rn=`echo $bn | sed "s/.h5//g"`
	
		echo $rn for this res, cannot compute the plots
		#qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn} plot_all.pbs
	
	elif [[ ${bn} =~ "_400000_" ]]
	then 
		rn=`echo $bn | sed "s/.h5//g"`

                echo $rn contact map for all chrs
                qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.15,vmax=5700 plot_all.pbs
		
	#elif [[ ${bn} =~ "_150000_" ]]
	else
		rn=`echo $bn | sed "s/.h5//g"`

                echo $rn contact map for all chrs
                qsub -N ${rn}_hicplot -v inp_h5=$f,out=${rn},vmin=0.09,vmax=2400 plot_all.pbs
	fi
done
