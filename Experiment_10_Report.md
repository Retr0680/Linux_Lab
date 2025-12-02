# Experiment 10: Modular & Reusable Shell Programming
**Name:** Hrithvik Bhardwaj  
**Roll No.:** 590029169  
**Date:** 2025-09-23  

## Aim
To understand and implement modular and reusable shell scripting techniques using functions, sourcing external scripts, and optimizing performance.

## Requirements
- Linux with Bash
- Text editor
- Execute permissions

## Theory
### Modular Code
Functions and sourced scripts improve reusability.

### Optimization
Avoid subshells, use bash built-ins, minimize loops.

## Exercise 1: String Length
```bash
echo "Enter a string:"; read str
echo "Length: ${#str}"
```

## Exercise 2: Reverse String
```bash
read str
rev=""; len=${#str}
for ((i=len-1;i>=0;i--)); do rev="$rev${str:$i:1}"; done
echo "Reversed: $rev"
```

## Exercise 3: Concatenate Strings
```bash
read s1; read s2
echo "Concatenated: $s1$s2"
```

## Assignment 1: Factorial Function
math.sh:
```bash
factorial(){ n=$1; r=1; for((i=2;i<=n;i++));do r=$((r*i));done; echo $r; }
```
main_script.sh:
```bash
source math.sh; read num; echo "Factorial: $(factorial $num)"
```

## Assignment 2: Fibonacci Function
```bash
read n; a=0; b=1
for((i=0;i<n;i++));do echo -n "$a "; t=$((a+b)); a=$b; b=$t; done
```

## Assignment 3: Filename Lengths
```bash
read d; [ -z "$d" ] && d="."
for f in "$d"/*; do name=$(basename "$f"); echo "$name : ${#name} chars"; done
```

## Result
Modular shell scripting concepts learned.

## Conclusion
Experiment 10 improved understanding of reusable and optimized shell coding.
