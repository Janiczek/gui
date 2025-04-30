# gui

An UNIX-philosophy utility for standing up GUIs.

> [!WARNING]
> Not working yet, under development. The Tk programs producing the screenshots
> below have been hand-made, not produced by the `gui` utility. We're getting
> there!

## Examples

| Command                                                                              | Result                                                               |
| ------------------------------------------------------------------------------------ | -------------------------------------------------------------------- |
| `gui 'label:"XYZ"'`                                                                  | ![](https://github.com/Janiczek/gui/raw/main/examples/label.webp)    |
| `echo Hello \| gui label:STDIN`                                                      | ![](https://github.com/Janiczek/gui/raw/main/examples/stdin.webp)    |
| `seq 100 \| gui textarea:STDIN`                                                      | ![](https://github.com/Janiczek/gui/raw/main/examples/textarea.webp) |
| `gui 'textarea:FILE(x.txt)'`                                                         | ![](https://github.com/Janiczek/gui/raw/main/examples/readfile.webp) |
| `gui 'col:[label:"Your name:", input#name, button(onclick:#name->STDOUT):"Submit"]'` | ![](https://github.com/Janiczek/gui/raw/main/examples/col.webp)      |

## Dependencies

- Tcl/Tk 9
  - macOS: `brew install tcl-tk`
  - Linux: `apt install tk`

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

### Supported Elements

Currently supported elements include:

- `label` - Displays text
- `input` - Single-line text input
- `textarea` - Multi-line text input
- `button` - Clickable button
- `col` - Vertical container
- `row` - Horizontal container

Examples:

```
label:"Static text"
input(placeholder:"Type here")
textarea:STDIN
button(onclick:#name->STDOUT):"Click me"
col:[label:"Name:", input#name]
row(gap:5):[button:"OK", button:"Cancel"]
```

## TODOs

- JSON mode:
```json
{
    "col": [
        { "label": "Your name:" },
        { "input#name": null },
        { "button": { "onclick": "#name->STDOUT", "value": "Submit" } }
    ]
}
```

- json expando tree view
- example of a wizard dialog
- example of plucking just some values from JSON
- document supported attributes and examples
- what about appending to a file?
- what about negative numbers

