#!/usr/bin/env wish

checkbutton .c1 -text Bold    -variable bold    -anchor w
checkbutton .c2 -text Italics -variable italics -anchor w

# The "sticky" option aligns items to the left (west) side
grid .c1 -row 0 -sticky w
grid .c2 -row 1 -sticky w 