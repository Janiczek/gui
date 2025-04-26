#!/usr/bin/env wish

proc doIt {widget} {
    set current_color \
        [tk_chooseColor -title "Choose a background color" -parent .]
    $widget configure -background $current_color
}
label .l -text "Label"
button .b -text "Choose a color..." \
        -command "doIt .l" 
grid .l -row 0 -column 0
grid .b -row 1 -column 0