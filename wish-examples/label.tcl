#!/usr/bin/env wish

# Create three different labels
label .l1 -text "This is what the default label looks like"
label .l2 -text "This is a yellow label on a blue background" \
    -foreground Yellow \
    -background Blue
label .l3 -text "This is a label in Times 24 font" \
    -font {-family times -size 24}

# Put them in the window in row order
grid .l1 -row 0
grid .l2 -row 1
grid .l3 -row 2