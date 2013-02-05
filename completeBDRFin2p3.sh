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


echo "OFF file=" $file
typeset PI=3.14159265
integer ii=0
typeset x=0.0;
typeset y=0.0;
typeset z=0.0;
typeset t=0.0;
typeset p=0.0;
typeset theta2=0.0;
typeset phi2=0.0;

(( ii= i*10 ))
cd /home/davidcoeurjolly/Sources/digitalSnow/radiativeTransfer/tools/build/Data
mkdir $1:r
cd $1:r
echo $PWD


for theta in {0..359}
do
    echo "=========== Theta $theta ==========="
    for phi in {0..80}
    do
	echo "=========== Phi $phi ==========="
        for lambda in {4..6}
	do
	    echo "=========== Lambda $lambda ==========="
	    
	    
	done
    done
done
