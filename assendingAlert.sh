#!/bin/bash

# Using sox play to produce an alert sound

play -q -n synth sine F2 sine C3 remix - fade 0 4 .1 norm -4 bend 0.5,2477,2 fade 0 4.0 0.5 &>/dev/null
