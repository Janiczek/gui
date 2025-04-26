#!/usr/bin/env wish

#The first button calls a procedure (a callback) that switches the 
#buttons name between Hello and Goodbye. The second button
#executes a command that destroys the window.

set text Hello
proc doIt {widget} {
    global text
    if {$text == "Hello"} {
        set text "Goodbye"
    } else {
        set text "Hello"
    }
    $widget configure -text $text
}

button .b1 -text "Hello" \
        -command "doIt .b1"
button .b2 -text "Quit" \
    -command "destroy ."

# Put them in the window in row order
grid .b1 -row 0 -column 0
grid .b2 -row 0 -column 1