# gui

An UNIX-philosophy utility for standing up GUIs.

## Examples

| Command                                                                              | Result                                                                             |
| ------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------- |
| `gui 'label:"XYZ"'`                                                                  | ![gui 'label:"XYZ"'](https://github.com/Janiczek/gui/raw/main/examples/label.webp) |
| `echo Hello \| gui text:STDIN`                                                       |                                                                                    |
| `seq 100 \| gui textarea:STDIN`                                                      |                                                                                    |
| `gui 'textarea:FILE(x.txt)'`                                                         |                                                                                    |
| `gui 'col:[label:"Your name:", input#name, button(onclick:#name->STDOUT):"Submit"]'` |                                                                                    |
| `gui 'jsontree:FILE(x.json)'`                                                        |                                                                                    |

TODO: example of a wizard dialog

TODO: example of plucking just some values from JSON

## Dependencies

- Tcl/Tk 9 (`brew install tcl-tk`)

## The language

The language is roughly similar to HTML: each element can contain attributes, an
ID and a value.

### Literals

Strings are specified in double quotes:

```
"Hello World"
"Multi\nline"
"With \"quotes\""
```

Integers are specified as numbers:

```
123
0
```

TODO what about negative numbers

### Basic Elements

Elements can be specified in several ways:

```
divider                 # Basic element
button#title            # Button with ID
label:"Hello World"     # Label with text
button(fgcolor:"red")   # Button with red text
label#title(fgcolor:"red"):"Hello World"  # Full label with ID, color and text
```

### Attributes

Attributes are specified in parentheses after the element name, separated by a
comma.

```
input(placeholder:"Enter text")
button(onclick:#name->STDOUT)
label(fgcolor:"red",onclick:"doSomething")
```

### IDs

IDs are specified with a hash (#) after the element name:

```
input#username
button#submit
```

### Lists

Lists are specified in square brackets with comma-separated elements:

```
col:[label:"Hello", input:"World"]
row:[button:"OK", button:"Cancel"]
```

### Special Objects

There are special objects for I/O operations:

- `STDIN` - Reads from standard input
- `STDOUT` - Writes to standard output
- `STDERR` - Writes to standard error
- `FILE(path/to/file.txt)` - Reads from or writes to a file

### Functions

Functions say which source should be sent to which destination, using the arrow
syntax (`->`):

```
#name->STDOUT          # Send value of #name to STDOUT
"xyz"->#button         # Send the string to be the #button text
#textarea->FILE(x.txt) # Write the contents of #textarea to a file
"Bleh"->STDERR         # Send the string to STDERR
```

TODO: what about appending?

### Supported Elements

Currently supported elements include:

- `label` - Displays text
- `input` - Single-line text input
- `textarea` - Multi-line text input
- `button` - Clickable button
- `col` - Vertical container
- `row` - Horizontal container

TODO supported attributes and examples

Examples:

```
label:"Static text"
input(placeholder:"Type here")
textarea:STDIN
button(onclick:#name->STDOUT):"Click me"
col:[label:"Name:", input#name]
row(gap:5):[button:"OK", button:"Cancel"]
```
