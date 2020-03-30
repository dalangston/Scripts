#!/bin/bash

# Sound effects from @isislovecruft on twitter

x="if(t%2)else";python3 -c"[print(t>>15&(t>>(2$x 4))%(3+(t>>(8$x 11))%4)+(t>>10)|42&t>>7&t<<9,end='')for t in range(2**20)]"|aplay -c2 -r4
