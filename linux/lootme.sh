#!/bin/bash
for files in `cat files.txt`; do
        echo.
        echo "<details><summary^>$files</summary>"
        echo "```"
        cat $files
        echo "```"
        echo "</details>"
        echo.
        echo.

done
