Kilo
===

This fork of Kilo is now a REPL for 
[Runt](http://www.github.com/paulbatchelor/runt.git)!

## REPL Usage

The Kilo REPL allows runt code in the text editor to be evaluated one line
at a time by pressing "CTRL-e". Kilo writes output from Runt directly to a file
called "tape" in the project working directory.

### Method 1: Using tail -f

The simplest way to use the REPL is simply to use "tail -f" to monitor the 
file tape. This is done in the following way:

- Start up Kilo. 
- Start another terminal window in the same working directory
- Run "tail -f tape"
- In kilo write '"hello world" say' and hit CTRL-e
- If everything works, "hello world" should appear in the other window

### Method 2: Using a terminal multiplexer
To use Kilo as a REPL, you will need a terminal multiplexer like tmux, screen, 
or dvtm.
Start up your multiplexer, and do the following:

- spawn two terminal windows, each in the working directory. One will be
the editor window. The other will serve as the listener.
- In your designated listener window, run "ln -s $(tty) tape". This will create
a file called "tape". 
- Run kilo in the designated editor window.
- write '"hello world" say' and hit CTRL-e. You should see
"hello world" appear on the other window!

## Description

Kilo is a small text editor in less than 1K lines of code (counted with cloc).

A screencast is available here: https://asciinema.org/a/90r2i9bq8po03nazhqtsifksb

Usage: kilo `<filename>`

Keys:

    CTRL-S: Save
    CTRL-Q: Quit
    CTRL-F: Find string in file (ESC to exit search, arrows to navigate)

Kilo does not depend on any library (not even curses). It uses fairly standard
VT100 (and similar terminals) escape sequences. The project is in alpha
stage and was written in just a few hours taking code from my other two
projects, load81 and linenoise.

People are encouraged to use it as a starting point to write other editors
or command line interfaces that are more advanced than the usual REPL
style CLI.

Kilo was written by Salvatore Sanfilippo aka antirez and is released
under the BSD 2 clause license.
