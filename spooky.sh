#!/bin/bash

# Play spooky noise using sox
# Taken from @climagic on twitter

play -n synth sin 900 bend 0.3,800,1 bend 1.2,-150,1 trim 0 3.5 reverb -w

