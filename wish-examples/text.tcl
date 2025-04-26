#!/usr/bin/env wish

# This demonstration script creates a text widget that illustrates the
# various display styles that may be set for tags. 
# Modified from the demo widget example provided in the Tcl release

text .t -yscrollcommand ".scroll set" -setgrid true \
        -width 40 -height 10 -wrap word
scrollbar .scroll -command ".t yview"
pack .scroll -side right -fill y
pack .t -expand yes -fill both

# Set up the tags 
.t tag configure bold_italics -font \
    {-family courier -size 12 -weight bold -slant italic}
.t tag configure big -font {-family helvetica -size 24 -weight bold}
.t tag configure color1 -foreground red
.t tag configure sunken -relief sunken -borderwidth 1
.t tag bind Ouch <1> {.t insert end "Ouch! "}

# Now insert text that has the property of the tags
.t insert end "Here are a few text styles.\n"
.t insert end "1. Bold italic text.\n" bold_italics
.t insert end "2. Larger Helvetica  text.\n" big
.t insert end "3. Red text.\n" color1
.t insert end "4. Sunken text.\n" sunken
button .b -text "5. An embedded Hello Button" \
    -command {.t insert end "Hello "}
.t window create end -window .b
.t insert end "\n"
.t insert end "6. Text with a binding (try clicking me)" Ouch
.t insert end "\nAnd all this is editable!"