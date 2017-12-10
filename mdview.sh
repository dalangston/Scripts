#!/bin/bash

###
# File:		mdview.sh
# Author:	David Langston
# Version:	29 Oct 17
# Description:	Use pandoc and w3m to display Markdown documents in the terminal
# Usage:	mdview.sh <filename>
### 

pandoc $1 | w3m -T text/html

