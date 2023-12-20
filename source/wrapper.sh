#!/bin/sh
commands=$(../build/PiroJet ./workspace.json) 
cd $(echo $commands | cut -d ';' -f 1 )
$SHELL -ic cd . &&$(echo $commands | cut -d ';' -f 2 ) && $SHELL

