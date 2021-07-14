This repository contains a tool is for NN-guided synthesis of quantifier-free formulas of linear integer arithmetic, and a CHC solver based on it.
The technical background is found in the following paper.
```
Naoki Kobayashi, Taro Sekiyama, Issei Sato, Hiroshi Unno:
Toward Neural-Network-Guided Program Synthesis and Verification, 
to appear in SAS 2021. 
A preliminary version is found at https://arxiv.org/abs/2103.09414.
```

# How to install the formula synthesizer
run
```
dune build learnMp.exe
```
You need to install ocaml-torch (by running 'opam install torch') in advance.


# How to run the formula synthesizer
run
```
learn.sh <options> <datafile>
```
## options
* -epochs <number> : the number of epochs (default: 30000)
* -nodes <number> : the number of hidden nodes (default: 32)
* -loss [0|1|2|3] : loss function (default: 0)
  - 0: log
  - 1: linear
  - 2: square with linear imp
  - 3: square
* -hiddenfun <number> : activation function of hidden layers (default: 1)
  - 0: sigmoid
  - 1: tanh

* -mod2 : consider mod 2 constraints on integer arguments
* -poly : infer polynomial constraints (warning: this is an experimental mode, which does not work properly)
* -3l : use three layers (default: false)
* -retry <number> : the number of retries upon failing to complete learning

Run
```
./learn.sh --help
```
to see other options.

### Example:
./learn.sh -nodes 16 -epochs 10000 -loss 0 data/plus.dat


# How to install a NN-based CHC solver
run
```
dune build learnMp.exe cycle.exe mergedata.exe genHoiceInputWithHint.exe 
```
You need to install ocaml-torch (by running 'opam install torch') and
a forked version of Hoice (https://github.com/naokikob/hoice) in advance.


# How to run the NN-based CHC solver
run
```
./cycle.sh <chcfile>
```

### Example:
./cycle.sh data/benchmark/plusminus.smt2


