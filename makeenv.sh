#!/bin/bash
pythonVersion='3.6'
if [ ! -z $1  ]
then
    pythonVersion=$1
fi
curDirName=${PWD##/*/}
condaDeactivate="source deactivate"
condaCreate="conda create --name=$curDirName python=$pythonVersion"
codnaActivate="source activate $curDirName"
eval '$condaDeactivate'
eval '$condaCreate'
eval '$codnaActivate'
eval 'echo $condaDeactivate > .env'
eval 'echo $codnaActivate >> .env'
~                                              
