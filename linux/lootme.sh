#!/bin/bash
for f in `cat files.txt`; do
	if [ -f $f ]; then
		echo ""
        echo "<details><summary>$f</summary>"
        echo "\`\`\`"
    	cat $f
    	echo "\`\`\`"
        echo "</details>"
        echo ""
        echo ""	
    else
    	echo "asd" > /dev/null
    fi
	
done