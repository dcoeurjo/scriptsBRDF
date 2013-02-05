#!/bin/zsh
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

typeset PBRTPATH=$6

for theta in {0..1}
do
    echo "=========== Theta $theta ==========="
    for phi in {0..2}
    do
	echo "=========== Phi $phi ==========="
        for lambda in {4..5}
	do
	    echo "=========== Lambda $lambda ==========="
	    
	    oneJob.sh  $file $sx $sy $sz $r $lambda $theta $phi $PBRTPATH
	done
    done
done
