#!/usr/bin/env wish

proc doIt {label} {
    set button \
        [tk_messageBox \
               -icon question \
               -type yesno \
               -title Message \
               -parent . \
               -message "Do you like me so far?"]
    $label configure -text $button
}

label .l -text "I'm not sure yet"
button .b -text "Do you like me?" \
        -command "doIt .l"

grid .b -row 0 -column 0
grid .l -row 0 -column 1