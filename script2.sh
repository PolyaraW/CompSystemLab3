!#/bin/bash
cd /home/grid/testbed/tb413/lab/CompSystemLab3
ml icc
exts=`cat /proc/cpuinfo | grep flags | cut -d: -f2 | uniq`
for i in $exts
do
    icc -qopt-report=2 -qopt-report-phase=vec -D NOALIAS -D ALIGNED -ipo cppcode.cpp -o sample_ext -x$i 2>/dev/null
    if [ $? -eq 0 ]
    then 
        printf "\n EXTENSION: $i"
    time ./sample_ext
    fi
done