#!/usr/bin/env wish

# Create a scrollable listbox containing color names. When a color is
# double-clicked, the label on the bottom will change to show the
# selected color name and will also change the background color

proc setLabel {color} {
    .label configure -text $color -background $color
}

scrollbar .s -command ".l yview"
listbox .l -yscroll ".s set"

label .label -text "Nothing Selected"

bind .l <Double-B1-ButtonRelease> {setLabel [.l get active]}

grid .l -row 0 -column 0 -sticky news
grid .s -row 0 -column 1 -sticky news
grid .label -row 1 -column 0 -columnspan 2

.l insert 0 gray60 gray70 gray80 gray85 gray90 gray95 \
    snow1 snow2 snow3 snow4 seashell1 seashell2 \
    seashell3 seashell4 AntiqueWhite1 AntiqueWhite2 AntiqueWhite3 \
    DarkSlateGray1 DarkSlateGray2 DarkSlateGray3 \
    aquamarine4 DarkSeaGreen1 DarkSeaGreen2 DarkSeaGreen3 \
    PaleGreen1 PaleGreen2 PaleGreen3 PaleGreen4 SpringGreen1 \
    green3 green4 chartreuse1 chartreuse2 chartreuse3 \
    chartreuse4 OliveDrab1 OliveDrab2 OliveDrab3 OliveDrab4 \
    coral2 coral3 coral4 tomato1 tomato2 tomato3 tomato4 \
    red4 DeepPink1 DeepPink2 DeepPink3 DeepPink4 HotPink1 \
    HotPink2 HotPink3 HotPink4 pink1 pink2 pink3 pink4 \
    PaleVioletRed2 PaleVioletRed3 PaleVioletRed4 maroon1 \
    VioletRed4 magenta1 magenta2 magenta3 magenta4 orchid1 \
    orchid2 orchid3 orchid4 plum1 plum2 plum3 plum4 \
    DarkOrchid1 DarkOrchid2 DarkOrchid3 DarkOrchid4 purple1 \
    MediumPurple3 MediumPurple4 thistle1 thistle2 thistle3