# sqldiffer
A wrapper of SQLite `sqldiff` util for use with `git diff`.

# Build

This repo is a Nimble package with some code written in
[Nim](https://nim-lang.org).

To build it, simply set up your Nim environment (by `choosenim` or manual
installation) and treat it as a usual Nimble package like:
```
nimble build
```

Then install it into your `$(PATH)` use something like:
```
install sqldiffer /usr/local/bin
```

# Usage

To use it as a external differ for `git diff`, you may edit your `gitconfig` and
`gitattributes` following the instructions in their `man` pages after placing
the tool in your `$(PATH)`.
