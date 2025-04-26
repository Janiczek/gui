#!/usr/bin/env wish

pack [ttk::notebook .nb]

set f1 [frame .nb.f1]
label $f1.label -text "Welcome to the first tab!"
button $f1.button -text "Click me" -command {puts "First tab button clicked"}
pack $f1.label $f1.button -pady 10
.nb add $f1 -text "First tab"

set f2 [frame .nb.f2]
label $f2.title -text "This is the second tab" -font "TkHeadingFont"
ttk::entry $f2.entry -width 30
button $f2.submit -text "Submit" -command {puts "You entered: [.nb.f2.entry get]"}
pack $f2.title -pady 5
pack $f2.entry -pady 10 -padx 20 -fill x
pack $f2.submit -pady 5
.nb add $f2 -text "Second tab"

# Select the second tab initially
.nb select .nb.f2

# Enable keyboard navigation between tabs
ttk::notebook::enableTraversal .nb

grid .nb -row 0 -column 0 -sticky nsew