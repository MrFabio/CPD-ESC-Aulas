find */*.txt -not -name *-8.txt | while read line; do
    grep "^\"$1\"" "$line" | awk "NR==$2" | sed -e 's/ \+ /\t/g' | sed -e 's/^\".*\"\t//g'
done
