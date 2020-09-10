Style Guide for LAUS devlopers

Source: https://google.github.io/styleguide/shellguide.html

Table of Contents
 Comments
 TODOs
 Commands

----------------------------------------

Comments

File Header
Start each file with a description of its contents.
Every file must have a top-level comment including a brief overview of its contents.
Author with full Name information with capital letters are mandatory.

Example:

#!/bin/bash
#
# Perform hot backups of Oracle databases.

# created by Thomas Gatterer

--------------------------------------------

TODOs

Use TODO comments for code that is temporary, a short-term solution,
or good-enough but not perfect.
TODOs should include the string TODO in all caps,
followed by the name, e-mail address, or other identifier of the
person with the best context about the problem referenced by the TODO.
The main purpose is to have a consistent TODO that can be searched
to find out how to get more details upon request.
A TODO is not a commitment that the person referenced will
fix the problem. Thus when you create a TODO , it is almost
always your name that is given.

Examples:

# TODO(Tomm): First attempt for a LAUS script styling guide to work together
---------------------------------------

Commands

apt-get
 Please add all apt-get install's in one command, because otherwise every install will start complete deb-database quest.

# TODO(Reini) Discussion: If we install a lot of extra codex, should not we not know which application, depend on it, AND do not install it via dependencies?


