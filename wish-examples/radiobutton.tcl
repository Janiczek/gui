#!/usr/bin/env wish

radiobutton .r1 -text Helvetica -variable font -value helvetica
radiobutton .r2 -text Courier   -variable font -value courier   

# The "sticky" option aligns items to the left (west) side
grid .r1 -row 0 -sticky w
grid .r2 -row 1 -sticky w 