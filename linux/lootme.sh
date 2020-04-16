#!/bin/bash
for files in `cat files.txt`; do
        echo
        echo "<details><summary^>$files</summary>"
        echo "```"
        FILE=$files
        if test -f "$FILE"; then
                cat $FILE
        fi
        echo "```"
        echo "</details>"
        echo
        echo

done
