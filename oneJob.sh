#!/bin/zsh
zmodload zsh/mathfunc     

#Temp var
typeset x=0.0;
typeset y=0.0;
typeset z=0.0;
typeset t=0.0;
typeset p=0.0;
typeset PI=3.14159265

typeset  filename=$1


#initial volume size
typeset sx=$2
typeset sy=$3
typeset sz=$4

#initial volume resolution
typeset r=$5

#shooting
typeset lambda=$6
typeset theta=$7
typeset phi=$8

#PWD
typeset PBRTPATH=$9

typeset name=$1:r

echo "Parameters: $filename -- ( $sx $sy $sz )-- $r -- $lambda  ($theta,$phi) ---- $name  // $PBRTPATH"

## Upadating file
(( t=theta*PI/180.0))
(( p=phi*PI/180.0))
echo "Updating pbrt..."
(( x= 50.0*cos(t)*sin(p) ))
(( y= 50.0*sin(t)*sin(p) ))
(( z= 50.0*cos(p) ))

cat $filename  | head -n 10 >! $name-$theta-$phi-Photon.pbrt
echo "LightSource \"distant\" \"point from\" [$x $y $z] \"point to\" [0 0 0]" >>  $name-$theta-$phi-Photon.pbrt
cat $filename | tail -n +12 >>  $name-$theta-$phi-Photon.pbrt

## Running
oneJob-sub1.sh $sx $sy $sz $r $lambda $theta $phi $name $PBRTPATH &
oneJob-sub2.sh $sx $sy $sz $r $lambda $theta $phi $name $PBRTPATH 
