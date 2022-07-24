#!/bin/bash
echo 'checking abs'
time timeout 600 ../../oracle.sh -negonly abs
echo 'checking max'
time timeout 600 ../../oracle.sh -negonly max
echo 'checking sum'
time timeout 600 ../../oracle.sh sum
echo 'checking sumup'
time timeout 600 ../../oracle.sh sumup
echo 'checking sumdown'
time timeout 600 ../../oracle.sh sumdown
echo 'checking sumupc'
time timeout 600 ../../oracle.sh -negonly sumupc
echo 'checking sumodd'
time timeout 600 ../../oracle.sh sumodd
echo 'checking sum3n'
time timeout 600 ../../oracle.sh sum3n
echo 'checking fib'
time timeout 600 ../../oracle.sh -loop 15 fib
echo 'checking fibit'
time timeout 600 ../../oracle.sh fibit
# echo 'checking fibit_binoracle'
# time timeout 600 ../../oracle.sh fibit_binoracle
echo 'checking fibit3'
time timeout 600 ../../oracle.sh fibit3
echo 'checking mc91'
time timeout 600 ../../oracle.sh -bias 50 mc91
