# gui

An UNIX-philosophy utility for standing up GUIs.

```bash
gui 'label:"XYZ"'
```

```bash
echo Hello | gui text:STDIN
```

```bash
seq 100 | gui textarea:STDIN
```

```bash
gui 'textarea:FILE(x.txt)'
```

```bash
gui 'col:[label:"Your name:", input#name, button(onclick:#name->STDOUT):"Submit"]'
```

TODO: example of a wizard dialog

TODO: example of a JSON input to `gui` (multiple inputs)

## Dependencies

- Tcl/Tk 9 (`brew install tcl-tk`)

## The language

The language is roughly similar to HTML: each element can contain attributes, an
ID and a value.

```
input
input#name
input:"Value"
input(placeholder:"Placeholder")
input#name(oninput:#name->STDOUT):"Init value"
```

In addition to elements there are also arrays:

```
col:[label:"Hello", input:"World"]
```

There are special objects: STDIN, STDOUT, FILE(path/to/file.txt)

Function syntax

## Inputs to a program

By default the `gui` takes

## Outputs of a program

### Label
