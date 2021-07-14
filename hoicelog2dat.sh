#!/bin/bash
THIS_DIR=$(cd $(dirname $0) && pwd)
$THIS_DIR/_build/default/hoicelog2dat.exe "$@"
