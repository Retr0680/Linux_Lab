# write a function name table to print table of any number. if number is 2 then 2x1=2

#!/bin/bash
table() {
    num=$1
    for i in {1..10}
    do
        echo "$num x $i = $((num * i))"
    done
}

echo "Enter a number to print its table: "
read n
echo "Table of $n is: "
table $n