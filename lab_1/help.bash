#!/bin/bash
function help {   echo -e "
---====\e[1;3mAvailable commands\e[0m:====---
1)---===\033[36mcalc\033[0m===---
        arguments:
	sum/sub/mul/div
	variable 1
	variable 2
2)---===\033[36msearch\033[0m===---
	arguments:
	directory
	regular expression
3)---===\033[36mreverse\033[0m===---
	arguments:
	reading file name
	writing file name
4)---===\033[36mstrlen\033[0m===---
	arguments:
	text
5)---===\033[36mlog\033[0m===---
        no arguments
6)---===\033[36mexit\033[0m===---
        arguments:
	exit code (optional, default is 0)
7)---===\033[36mhelp\033[0m===---
	no arguments
8)---===\033[36minteractive\033[0m===---(menu)
	no arguments"
}
