This repository contains a tool is for NN-guided synthesis of quantifier-free formulas of linear integer arithmetic, and a CHC solver based on it.
The technical background is found in the following paper.
```
Naoki Kobayashi, Taro Sekiyama, Issei Sato, and Hiroshi Unno,
"Toward Neural-Network-Guided Program Synthesis and Verification", 
to appear in SAS 2021. 
A preliminary version is available at https://arxiv.org/abs/2103.09414.
```

# How to install the formula synthesizer
run
```
dune build learnMp.exe
```
You need to install ocaml-torch (by running 'opam install torch') in advance.
Add the directory of learnMp.sh to the PATH environment variable.

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

* -rate: learning rate
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
```
./learn.sh -nodes 16 -rate 0.01 -epochs 10000 data/2d/test1.dat
```

# How to install a NN-based CHC solver
run
```
dune build learnMp.exe cycle.exe mergedata.exe genHoiceInputWithHint.exe hoicelog2dat.exe
```
You need to install ocaml-torch (by running 'opam install torch') and
a forked version of HoIce (https://github.com/naokikob/hoice) in advance.
Please save the forked version of HoIce as "nkhoice".


# How to run the NN-based CHC solver
run
```
./cycle.sh <chcfile>
```

### Example:
```
./cycle.sh data/chc/plusminus.smt2
```

# How to install an oracle synthesizer
run
```
dune build oracle.exe 
```

# How to run oracle synthesizer
run
```
cd <directory where the input oracle file is located>
mkdir tmp (* if the tmp directory has not been created *)
oracle.sh <oraclefile>
```

### Example:
```
cd data/oracleinputs
../../oracle.sh abs
```

