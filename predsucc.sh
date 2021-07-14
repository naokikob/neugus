#!/bin/bash

echo $(grep "Predicates" $@ | wc -l) / $(grep "redicates" $@ | wc -l)
