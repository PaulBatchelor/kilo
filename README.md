Kilo
===

This fork of Kilo is now a REPL for 
[Runt](http://www.github.com/paulbatchelor/runt.git)!

# Usage

Open up Kilo.

Write a line runt code, and hit ctrl-e to evaluate that line!

Runt output is sent to a text file called "tape", which is created in the current
working directory. To see it, open up another terminal window in the same
directory, and run "tail -f tape". For best results, use a terminal 
multiplexer like tmux, screen, or even dvtm!

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
