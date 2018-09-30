#!/bin/bash

# Play a silly sound
# Source @climagic ono Twitter

play -n synth sq C trim 0 4 vol 0.2 chorus 1 1 21 1 4 10 -s bend 0,2400,4 fade 0.1 4 2 &>/dev/null
