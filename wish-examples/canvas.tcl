#!/usr/bin/env wish

# An example of canvases, items, and dragging things around

proc moveit {object x y} {
  .c coords $object [expr $x-25] [expr $y-25] [expr $x+25] [expr $y+25]
}

canvas .c -width 250 -height 100
set myoval [.c create oval 20 20 70 70 -fill orange]
set myline [.c create line 80 30 130 80 -fill blue -width 4]

.c bind $myoval <B1-Motion>  {moveit $myoval %x %y}
.c bind $myline <B1-Motion>  {moveit $myline %x %y}

grid .c -row 0 -column 0