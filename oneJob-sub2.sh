#!/bin/zsh

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
typset  PBRTPATH=$9



$PBRTPATH/pbrt  -w ${lambda}50 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi temp_$theta-$phi-Photon.pbrt 
$PBRTPATH/pbrt  -w ${lambda}60 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi temp_$theta-$phi-Photon.pbrt 
$PBRTPATH/pbrt  -w ${lambda}70 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi temp_$theta-$phi-Photon.pbrt 
$PBRTPATH/pbrt  -w ${lambda}80 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi temp_$theta-$phi-Photon.pbrt 
$PBRTPATH/pbrt  -w ${lambda}90 -x $sx -y $sy -z $sz -r $r -t $theta -phi $phi temp_$theta-$phi-Photon.pbrt 
