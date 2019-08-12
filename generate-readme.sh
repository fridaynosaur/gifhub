#!/bin/sh
readme=README.md
gifhub_url='https://github.com/pmoravek-hw/gifhub/raw/master/'

echo "Rewriting README.md"

cat > $readme <<EOF
# gifhub

A collection of random gifs for pull requests

EOF

for x in *.gif;
do
	echo "Adding $x"	
	cat >> $readme <<EOF
<details>
   <summary>$x</summary>
   <p>
       <img src="$gifhub_url$x" alt="x">
   </p>
</details>
EOF
done

echo "done"