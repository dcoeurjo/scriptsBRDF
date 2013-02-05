#!/usr/local/bin/zsh
zmodload zsh/mathfunc     

# NOFF filename
typeset file=$1

#initial volume size
typeset sx=$2
typeset sy=$3
typeset sz=$4

#initial volume resolution
typeset r=$5

echo "PhotonPBRT file=" $file

mkdir /sps/inter/liris/dcoeurjo/Results/$file:r


for theta in {0..0}
do
    for phi in {0..10}
    do
        for lambda in {4..7}
	do    
	    echo "=== Job  Theta $theta / Phi $phi  / Lambda $lambda ==="
	    qsub oneJob.sh  $file $sx $sy $sz $r $lambda $theta $phi
	done
    done
done
