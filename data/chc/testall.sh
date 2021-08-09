#!/bin/bash
echo 'checking plus.smt2'
time ../../cycle.sh $@ plus.smt2
echo 'checking plusminus.smt2'
time ../../cycle.sh $@ plusminus.smt2
echo 'checking cggmp2005_variant_true-unreach-call_true-termination.sl.smt2'
time ../../cycle.sh $@ cggmp2005_variant_true-unreach-call_true-termination.sl.smt2
echo 'checking fib_17n.sl.smt2 '
time timeout 600 ../../cycle.sh $@ fib_17n.sl.smt2
echo 'checking fib_32.smt2 with option -mod2'
time ../../cycle.sh -mod2 $@ fib_32.smt2
echo 'checking jmbl_cggmp-new.sl.smt2'
time ../../cycle.sh $@ jmbl_cggmp-new.sl.smt2
echo 'checking jmbl_hola.07.sl.smt2'
time ../../cycle.sh $@ jmbl_hola.07.sl.smt2
echo 'checking 93.c.smt.smt2'
time ../../cycle.sh $@ 93.c.smt.smt2
echo 'checking pldi082_unbounded1_modified.ml.smt2'
time ../../cycle.sh $@ pldi082_unbounded1_modified.ml.smt2
echo 'checking xyz_modified.smt2 with option -datagen'
time timeout 600 ../../cycle.sh -datagen2 200 60 $@ xyz_modified.smt2
echo 'checking xyz_v.smt2'
time ../../cycle.sh $@ xyz_v.smt2
