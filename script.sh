!#/bin/bash
cd /home/grid/testbed/tb413/lab/CompSystemLab3
ml icc
g++ cppcode.cpp -0 sample0
time ./sample0
icc -01 cppcode.cpp -0 sample1
time ./sample1
icc -02 -D NOFUNCCALL -qopt-report=2 -qopt-report-phase=vec cppcode.cpp-o sample2
time ./sample2
icc -qopt-report=2 -qopt-report-phase=vec -D NOALIAS cppcode.cpp -o sample3
time ./sample3
icc -qopt-report=4 -qopt-report-phase=vec -D ALIGNED cppcode.cpp -o sample4