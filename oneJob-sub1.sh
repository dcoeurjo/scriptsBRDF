#!/usr/local/bin/zsh

#initial volume size
typeset sx=$1
typeset sy=$2
typeset sz=$3

#initial volume resolution
typeset r=$4

#shooting
typeset lambda=$5
typeset theta=$6
typeset phi=$7
typeset name=$8

echo "[sub1] Parameters: ( $sx $sy $sz )-- $r -- $lambda  ($theta,$phi) ---- $name $PBRTPATH"

pbrt -p -w ${lambda}00 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi $name-$theta-$phi-Photon.pbrt 
pbrt -p -w ${lambda}10 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi $name-$theta-$phi-Photon.pbrt 
pbrt -p -w ${lambda}20 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi $name-$theta-$phi-Photon.pbrt 
pbrt -p -w ${lambda}30 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi $name-$theta-$phi-Photon.pbrt 
pbrt -p -w ${lambda}40 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi $name-$theta-$phi-Photon.pbrt 